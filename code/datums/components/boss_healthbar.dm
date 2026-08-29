/datum/component/boss_healthbar
	dupe_mode = COMPONENT_DUPE_UNIQUE

	var/range
	var/list/atom/movable/screen/movable/boss_health/bars_by_viewer = list()

/datum/component/boss_healthbar/Initialize(range_override)
	if(!isliving(parent))
		return COMPONENT_INCOMPATIBLE

	var/mob/living/boss = parent
	range = range_override || boss.boss_bar_range || 12

	RegisterSignal(boss, COMSIG_LIVING_HEALTH_UPDATE, PROC_REF(on_health_update))
	RegisterSignal(boss, COMSIG_LIVING_DEATH, PROC_REF(on_death))
	RegisterSignal(boss, COMSIG_MOVABLE_Z_CHANGED, PROC_REF(on_boss_moved))

	START_PROCESSING(SSobj, src)
	sync_viewers()

/datum/component/boss_healthbar/Destroy(force)
	STOP_PROCESSING(SSobj, src)
	for(var/mob/viewer as anything in bars_by_viewer)
		hide_from(viewer)
	bars_by_viewer.Cut()
	return ..()

/datum/component/boss_healthbar/process()
	sync_viewers()

/datum/component/boss_healthbar/proc/sync_viewers()
	var/mob/living/boss = parent
	if(QDELETED(boss) || boss.stat == DEAD)
		clear_all()
		return

	var/list/seen = list()
	for(var/mob/viewer in view(range, boss))
		if(!viewer.client)
			continue
		if(viewer == boss)
			continue
		seen[viewer] = TRUE
		if(!bars_by_viewer[viewer])
			show_to(viewer)

	for(var/mob/viewer as anything in bars_by_viewer)
		if(!seen[viewer] || QDELETED(viewer) || !viewer.client)
			hide_from(viewer)

	restack_all()

/datum/component/boss_healthbar/proc/show_to(mob/viewer)
	if(bars_by_viewer[viewer])
		return

	var/atom/movable/screen/movable/boss_health/bar = new(null, parent)
	bars_by_viewer[viewer] = bar

	RegisterSignal(viewer, COMSIG_MOB_LOGOUT, PROC_REF(on_viewer_logout), override = TRUE)
	RegisterSignal(viewer, COMSIG_MOB_LOGIN, PROC_REF(on_viewer_login), override = TRUE)
	RegisterSignal(viewer, COMSIG_QDELETING, PROC_REF(on_viewer_qdel), override = TRUE)

	add_bar_to_hud(viewer, bar)

/datum/component/boss_healthbar/proc/add_bar_to_hud(mob/viewer, atom/movable/screen/movable/boss_health/bar)
	if(viewer.hud_used)
		viewer.hud_used.infodisplay |= bar
	viewer.client?.screen |= bar

/datum/component/boss_healthbar/proc/hide_from(mob/viewer)
	var/atom/movable/screen/movable/boss_health/bar = bars_by_viewer[viewer]
	bars_by_viewer -= viewer

	if(!QDELETED(viewer))
		UnregisterSignal(viewer, list(COMSIG_MOB_LOGOUT, COMSIG_MOB_LOGIN, COMSIG_QDELETING))
		if(viewer.hud_used)
			viewer.hud_used.infodisplay -= bar
		viewer.client?.screen -= bar

	qdel(bar)

/datum/component/boss_healthbar/proc/clear_all()
	for(var/mob/viewer as anything in bars_by_viewer)
		hide_from(viewer)

/datum/component/boss_healthbar/proc/on_health_update(datum/source)
	SIGNAL_HANDLER
	for(var/mob/viewer as anything in bars_by_viewer)
		var/atom/movable/screen/movable/boss_health/bar = bars_by_viewer[viewer]
		bar.update_boss_health()

/datum/component/boss_healthbar/proc/on_death(datum/source)
	SIGNAL_HANDLER
	on_health_update(source)

/datum/component/boss_healthbar/proc/on_boss_moved(datum/source)
	SIGNAL_HANDLER
	sync_viewers()

/datum/component/boss_healthbar/proc/on_viewer_logout(mob/viewer)
	SIGNAL_HANDLER
	hide_from(viewer)

/datum/component/boss_healthbar/proc/on_viewer_login(mob/viewer)
	SIGNAL_HANDLER
	sync_viewers()

/datum/component/boss_healthbar/proc/on_viewer_qdel(mob/viewer)
	SIGNAL_HANDLER
	hide_from(viewer)

/datum/component/boss_healthbar/proc/restack_all()
	var/i = 0
	for(var/mob/viewer as anything in bars_by_viewer)
		var/atom/movable/screen/movable/boss_health/bar = bars_by_viewer[viewer]
		bar.set_stack_index(i)
