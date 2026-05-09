/datum/round_event_control/gani_vines_malus
	name = "Gani's Malevolent Vines"
	track = EVENT_TRACK_INTERVENTION
	typepath = /datum/round_event/gani_vines
	weight = 2
	earliest_start = 10 MINUTES
	max_occurrences = 2
	min_players = 15
	dedicated_storytellers = list(/datum/storyteller/gani)
	allowed_storytellers = DIVINE_STORYTELLERS

	tags = list(
		TAG_GANI,
	)

/datum/round_event/gani_vines/start()
	var/list/turfs = list() //list of all the empty floor turfs in the hallway areas

	for(var/area/outdoors/town/A in GLOB.areas)
		for(var/turf/open/F as anything in A.get_turfs_from_all_zlevels())
			if(F.density || isopenspace(F))
				continue
			turfs += F

	var/maxi = is_ascendant(GANI) ? 25 : 15

	if(length(turfs))
		for(var/i in 1 to rand(5, maxi))
			var/turf/T = pick_n_take(turfs)
			message_admins("VINES at [ADMIN_VERBOSEJMP(T)]")
			var/obj/structure/flora/tree/evil/root = new(T)
			root.AddComponent(/datum/component/vine_controller, event = src, potency = 0.1, muts = list(/datum/vine_mutation/thorns, /datum/vine_mutation/woodening)) //spawn a controller component


/datum/round_event_control/gani_vines_boon
	name = "Gani's Blessed Vines"
	track = EVENT_TRACK_INTERVENTION
	typepath = /datum/round_event/gani_vines_good
	earliest_start = 10 MINUTES
	weight = 2
	max_occurrences = 2
	min_players = 15
	dedicated_storytellers = list(/datum/storyteller/gani)
	allowed_storytellers = DIVINE_STORYTELLERS

	tags = list(
		TAG_GANI,
	)

/datum/round_event/gani_vines_good/start()
	var/list/turfs = list() //list of all the empty floor turfs in the hallway areas

	for(var/area/outdoors/town/A in GLOB.areas)
		for(var/turf/open/F as anything in A.get_turfs_from_all_zlevels())
			if(F.density || isopenspace(F))
				continue
			turfs += F

	var/maxi = is_ascendant(GANI) ? 25 : 15

	if(length(turfs))
		for(var/i in 1 to rand(5, maxi))
			var/turf/T = pick_n_take(turfs)
			message_admins("VINES at [ADMIN_VERBOSEJMP(T)]")
			var/obj/structure/flora/tree/wise/root = new(T)
			root.AddComponent(/datum/component/vine_controller, event = src, potency = 0.1, muts = list(/datum/vine_mutation/light, /datum/vine_mutation/healing, /datum/vine_mutation/woodening))

/datum/round_event_control/gani_fertility
	name = "Gani's Blessing"
	track = EVENT_TRACK_INTERVENTION
	typepath = /datum/round_event/gani_fertility
	weight = 2
	earliest_start = 10 MINUTES
	max_occurrences = 2
	min_players = 15
	dedicated_storytellers = list(/datum/storyteller/gani)
	allowed_storytellers = DIVINE_STORYTELLERS

	tags = list(
		TAG_GANI,
	)

/datum/round_event/gani_fertility/start()
	SSmapping.add_world_trait(/datum/world_trait/gani_fertility, 20 MINUTES)

/datum/round_event_control/gani_ire
	name = "Gani's Ire"
	track = EVENT_TRACK_INTERVENTION
	typepath = /datum/round_event/gani_ire
	weight = 2
	earliest_start = 10 MINUTES
	max_occurrences = 2
	min_players = 15
	dedicated_storytellers = list(/datum/storyteller/gani)
	allowed_storytellers = DIVINE_STORYTELLERS

	tags = list(
		TAG_GANI,
	)

/datum/round_event/gani_ire/start()
	SSmapping.add_world_trait(/datum/world_trait/gani_drought, 20 MINUTES)
