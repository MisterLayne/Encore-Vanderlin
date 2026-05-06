/datum/round_event_control/deceivers_fingers
	name = "Deceivers' Fingers"
	track = EVENT_TRACK_INTERVENTION
	typepath = /datum/round_event/deceivers_fingers
	weight = 8
	earliest_start = 10 MINUTES
	max_occurrences = 2
	min_players = 20
	dedicated_storytellers = list(/datum/storyteller/deceivers)
	allowed_storytellers = INHUMEN_STORYTELLERS

	tags = list(
		TAG_DECEIVERS,
	)

/datum/round_event/deceivers_fingers/start()
	SSmapping.add_world_trait(/datum/world_trait/deceivers_fingers, 20 MINUTES)
