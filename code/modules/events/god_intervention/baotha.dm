/datum/round_event_control/hertannea_revelry
	name = "Hertannea's Revelry"
	track = EVENT_TRACK_INTERVENTION
	typepath = /datum/round_event/hertannea_revelry
	weight = 8
	earliest_start = 10 MINUTES
	max_occurrences = 2
	min_players = 15
	dedicated_storytellers = list(/datum/storyteller/hertannea)
	allowed_storytellers = INHUMEN_STORYTELLERS

	tags = list(
		TAG_HERTANNEA,
	)

/datum/round_event/hertannea_revelry/start()
	SSmapping.add_world_trait(/datum/world_trait/hertannea_revelry, 20 MINUTES)
