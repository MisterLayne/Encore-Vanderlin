/atom/movable/screen/movable/boss_health
	name = "Boss"
	//icon = 'icons/hud/boss_health.dmi'
	//icon_state = "bar_bg"
	icon = 'icons/mob/screen_gen.dmi'
	icon_state = "block"
	screen_loc = "CENTER,NORTH:-8"
	plane = ABOVE_HUD_PLANE
	mouse_opacity = MOUSE_OPACITY_ICON
	clear_with_screen = FALSE
	maptext_width = 400
	maptext_height = 72
	maptext_x = -184
	maptext_y = 0
	x_off = -16
	y_off = -16

	var/mob/living/boss
	var/atom/movable/screen/health_fill/fill

/atom/movable/screen/movable/boss_health/Initialize(mapload, mob/living/owner_boss)
	. = ..()
	boss = owner_boss
	name = owner_boss.boss_name || owner_boss.name

	fill = new
	vis_contents += fill
	update_boss_name()
	update_boss_health()

/atom/movable/screen/movable/boss_health/Destroy()
	boss = null
	QDEL_NULL(fill)
	return ..()

/atom/movable/screen/movable/boss_health/proc/update_boss_name()
	maptext = {"<span style="font-family: 'Blackmoor LET'; font-size: 24px; color: #FFFFFF; text-align: center; -dm-text-outline: 1px black">[name]</span>"}

/atom/movable/screen/movable/boss_health/proc/update_boss_health()
	if(QDELETED(boss))
		return
	var/ratio = 0
	if(boss.maxHealth > 0)
		ratio = CLAMP(boss.health / boss.maxHealth, 0, 1)
	fill.update_ratio(ratio)

/atom/movable/screen/movable/boss_health/MouseDrop(over_object, src_location, over_location, src_control, over_control, params)
	if(locked)
		return
	. = ..()
	moved = TRUE

/atom/movable/screen/movable/boss_health/proc/set_stack_index(index)
	if(moved)
		return
	screen_loc = "CENTER,NORTH:[-8 - (index * 28)]"

/atom/movable/screen/health_fill
	//icon = 'icons/hud/boss_health.dmi'
	//icon_state = "bar_fill"
	icon = 'icons/mob/screen_gen.dmi'
	icon_state = "blank"
	appearance_flags = KEEP_TOGETHER
	var/bar_width = 96

/atom/movable/screen/health_fill/proc/update_ratio(ratio)
	var/lost = 1 - ratio
	animate(src, pixel_w = -round(bar_width * lost), time = 0.3 SECONDS)
