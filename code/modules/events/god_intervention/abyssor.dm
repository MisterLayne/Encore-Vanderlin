/datum/round_event_control/mjallidhorn_rage
	name = "Mjallidhorn's Rage"
	track = EVENT_TRACK_INTERVENTION
	typepath = /datum/round_event/mjallidhorn_rage
	weight = 8
	earliest_start = 10 MINUTES
	max_occurrences = 2
	min_players = 20
	dedicated_storytellers = list(/datum/storyteller/mjallidhorn)
	allowed_storytellers = DIVINE_STORYTELLERS

	tags = list(
		TAG_MJALLIDHORN,
	)

/datum/round_event/mjallidhorn_rage/start()
	SSmapping.add_world_trait(/datum/world_trait/mjallidhorn_rage, 20 MINUTES)
