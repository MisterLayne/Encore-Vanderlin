/datum/round_event_control/visires_grandeur
	name = "Visires's Grandeur"
	track = EVENT_TRACK_INTERVENTION
	typepath = /datum/round_event/visires_grandeur
	weight = 8
	earliest_start = 15 MINUTES
	max_occurrences = 1
	min_players = 25
	todreq = list(DUSK, DAWN, DAY)
	dedicated_storytellers = list(/datum/storyteller/visires)
	allowed_storytellers = DIVINE_STORYTELLERS

	tags = list(
		TAG_VISIRES,
	)

/datum/round_event_control/visires_grandeur/canSpawnEvent(players_amt, gamemode, fake_check)
	. = ..()
	if(!.)
		return FALSE
	if(GLOB.patron_follower_counts[/datum/patron/divine/visires::name] < 3)
		return FALSE

/datum/round_event/visires_grandeur/start()
	for(var/mob/living/carbon/human/human_mob in GLOB.player_list)
		if(!istype(human_mob) || human_mob.stat == DEAD || !human_mob.client)
			continue

		if(!human_mob.patron || !istype(human_mob.patron, /datum/patron/divine/visires))
			continue

		// Only for visires clergy and nobles unless ascendant
		if(!is_ascendant(VISIRES) && (!(human_mob.mind?.assigned_role.title in GLOB.church_positions) && !human_mob.is_noble()))
			continue

		human_mob.add_stress(/datum/stress_event/visires_grandeur)

		bordered_message(human_mob, list(
			span_notice("Visires shines brightly todae - and just as she empowers the Burning Banner, so must you be relentless in your pursuits. The herald of flame demands no less from those who bask in her glory.")
		))
		human_mob.playsound_local(human_mob, 'sound/magic/bless.ogg', 100)
