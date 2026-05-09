/datum/round_event_control/erdl_mercy
	name = "Erdl's Mercy"
	track = EVENT_TRACK_INTERVENTION
	typepath = /datum/round_event/erdl_mercy
	weight = 8
	earliest_start = 10 MINUTES
	max_occurrences = 2
	min_players = 15
	dedicated_storytellers = list(/datum/storyteller/erdl)
	allowed_storytellers = DIVINE_STORYTELLERS

	tags = list(
		TAG_ERDL,
	)

/datum/round_event/erdl_mercy/start()
	SSmapping.add_world_trait(/datum/world_trait/erdl_mercy, 20 MINUTES)
