/atom/movable/screen/movable/boss_health
	name = "Boss"
	icon = 'icons/UI_Icons/bosshealthbar.dmi'
	icon_state = "base"
	screen_loc = "WEST,NORTH:-40"
	plane = ABOVE_HUD_PLANE
	mouse_opacity = MOUSE_OPACITY_ICON
	clear_with_screen = FALSE
	appearance_flags = TILE_BOUND
	x_off = -200
	y_off = -16

	var/last_health_step = 0

	var/mob/living/boss
	var/atom/movable/screen/health_fill/fill
	var/atom/movable/screen/boss_name/title

/atom/movable/screen/movable/boss_health/Initialize(mapload, mob/living/owner_boss)
	. = ..()
	boss = owner_boss
	name = owner_boss.boss_name || owner_boss.name

	title = new
	title.set_boss_name(name)
	title.screen_loc = screen_loc

	fill = new
	vis_contents += fill
	update_boss_health()

/atom/movable/screen/movable/boss_health/Destroy()
	boss = null
	QDEL_NULL(fill)
	QDEL_NULL(title)
	return ..()

/atom/movable/screen/movable/boss_health/Click(location, control, params)
	var/list/modifiers = params2list(params)
	if(LAZYACCESS(modifiers, RIGHT_CLICK))
		reset_position()
		return
	return ..()

/atom/movable/screen/movable/boss_health/proc/reset_position()
	moved = FALSE
	var/mob/viewer = usr
	if(istype(viewer))
		for(var/datum/component/boss_healthbar/comp as anything in GLOB.boss_healthbar_components)
			if(comp.bars_by_viewer[viewer] == src)
				comp.restack_viewer(viewer)
				return
	set_stack_index(0)

/atom/movable/screen/movable/boss_health/proc/get_health_ratio()
	if(QDELETED(boss) || boss.maxHealth <= 0)
		return 0

	var/total_damage = 0
	total_damage += boss.getBruteLoss()
	total_damage += boss.getFireLoss()
	total_damage += boss.getToxLoss()
	total_damage += boss.getOxyLoss()
	total_damage += boss.getCloneLoss()

	var/by_damage = 1 - (total_damage / boss.maxHealth)
	var/by_health = boss.health / boss.maxHealth
	return CLAMP(min(by_damage, by_health), 0, 1)

/atom/movable/screen/movable/boss_health/proc/update_boss_health()
	if(QDELETED(boss))
		return
	var/ratio = get_health_ratio()
	var/step = CLAMP(round((1 - ratio) * 10) * 10, 0, 100)
	fill.update_ratio(ratio)
	if(step > last_health_step)
		title?.flash_hurt()
	else if(step < last_health_step)
		title?.flash_heal()
	last_health_step = step

/atom/movable/screen/movable/boss_health/MouseDrop(over_object, src_location, over_location, src_control, over_control, params)
	if(locked)
		return
	. = ..()
	moved = TRUE
	if(title)
		title.screen_loc = screen_loc

/atom/movable/screen/movable/boss_health/proc/set_stack_index(index)
	if(moved)
		return
	screen_loc = "WEST,NORTH:[-40 - (index * 28)]"
	if(title)
		title.screen_loc = screen_loc

/atom/movable/screen/boss_name/proc/flash_hurt()
	color = "#FFFFFF"
	animate(src, color = "#FF2020", time = 0.12 SECONDS)
	animate(color = "#FFFFFF", time = 0.35 SECONDS)

/atom/movable/screen/boss_name/proc/flash_heal()
	color = "#FFFFFF"
	animate(src, color = "#40FF40", time = 0.12 SECONDS)
	animate(color = "#FFFFFF", time = 0.35 SECONDS)

/atom/movable/screen/health_fill
	icon = 'icons/UI_Icons/bosshealthbar.dmi'
	icon_state = "dam0"
	appearance_flags = TILE_BOUND
	layer = 0.1

/atom/movable/screen/health_fill/proc/update_ratio(ratio)
	ratio = CLAMP(ratio, 0, 1)
	var/step = round((1 - ratio) * 10) * 10
	step = CLAMP(step, 0, 100)
	icon_state = "dam[step]"

/atom/movable/screen/boss_name
	icon = 'icons/mob/screen_gen.dmi'
	icon_state = "blank"
	plane = ABOVE_HUD_PLANE
	mouse_opacity = MOUSE_OPACITY_TRANSPARENT
	clear_with_screen = FALSE
	appearance_flags = TILE_BOUND
	maptext_width = 400
	maptext_height = 40
	maptext_x = 12
	maptext_y = 36

/atom/movable/screen/boss_name/proc/set_boss_name(displayed_name)
	maptext = {"<span style="font-family: 'Vaticanus'; font-size: 20px; color: #FFFFFF; text-align: center; -dm-text-outline: 1px black">[displayed_name]</span>"}
