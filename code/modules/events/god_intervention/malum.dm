/datum/round_event_control/golerkanh_diligence
	name = "Goler Kanh's Diligence"
	track = EVENT_TRACK_INTERVENTION
	typepath = /datum/round_event/golerkanh_diligence
	weight = 8
	earliest_start = 10 MINUTES
	max_occurrences = 2
	min_players = 15
	dedicated_storytellers = list(/datum/storyteller/golerkanh)
	allowed_storytellers = DIVINE_STORYTELLERS

	tags = list(
		TAG_GOLERKANH,
	)

/datum/round_event/golerkanh_diligence/start()
	SSmapping.add_world_trait(/datum/world_trait/golerkanh_diligence, 20 MINUTES)
