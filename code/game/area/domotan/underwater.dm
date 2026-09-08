//domotan underwater areas
/area/under/underwater
	name = "Ocean"
	icon_state = "ocean"
	droning_index = AMBIENCE_UNDERWATER
	ambient_index = AMBIENCE_UNDERWATER
	ambient_index_night = AMBIENCE_UNDERWATER
	ambush_times = list("night")
	ambush_types = list(
				/turf/open/water)
	ambush_mobs = list(
				/mob/living/simple_animal/hostile/retaliate/wolf = 15,
				/mob/living/carbon/human/species/goblin/npc/ambush = 15,
				/mob/living/simple_animal/hostile/deepone/arm = 25,
				/mob/living/simple_animal/hostile/deepone/spit = 25)

/area/under/underwater/Entered(atom/movable/arrived)
	..()

	if(!isliving(arrived))
		return

	var/mob/living/L = arrived
	L.overlay_fullscreen("underwaterone", /atom/movable/screen/fullscreen/underwater)
	playsound(L, 'sound/misc/dive.ogg', 100, FALSE, 10)

/area/under/underwater/Exited(atom/movable/gone)
	..()

	if(!isliving(gone))
		return

	var/mob/living/L = gone
	L.clear_fullscreen("underwaterone")

/area/under/underwater/ocean
	name = "Deep Ocean"
	icon_state = "ocean_deep"
	first_time_text = "SEA OF FIRE"
	droning_index = AMBIENCE_DEEPWATER
	ambient_index = AMBIENCE_DEEPWATER
	ambient_index_night = AMBIENCE_DEEPWATER

/area/under/underwater/ocean/Entered(atom/movable/arrived)
	..()

	if(!isliving(arrived))
		return

	var/mob/living/L = arrived
	L.overlay_fullscreen("underwatertwo", /atom/movable/screen/fullscreen/underwater_abyss)
	playsound(L, 'sound/misc/dive.ogg', 100, FALSE, 10)

/area/under/underwater/Exited(atom/movable/gone)
	..()

	if(!isliving(gone))
		return

	var/mob/living/L = gone
	L.clear_fullscreen("underwatertwo")
	playsound(L, 'sound/misc/dive.ogg', 100, FALSE, 10)
