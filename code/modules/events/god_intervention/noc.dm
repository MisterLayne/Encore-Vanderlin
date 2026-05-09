/datum/round_event_control/akan_wisdom
	name = "Akan's Wisdom"
	track = EVENT_TRACK_INTERVENTION
	typepath = /datum/round_event/akan_wisdom
	weight = 8
	earliest_start = 10 MINUTES
	max_occurrences = 2
	min_players = 15
	todreq = list(DUSK, NIGHT, DAWN)
	dedicated_storytellers = list(/datum/storyteller/akan)
	allowed_storytellers = DIVINE_STORYTELLERS

	tags = list(
		TAG_AKAN,
	)

/datum/round_event/akan_wisdom/start()
	SSmapping.add_world_trait(/datum/world_trait/akan_wisdom, 20 MINUTES)
