/datum/patron/inhumen
	abstract_type = /datum/patron/inhumen
	associated_faith = /datum/faith/inhumen_pantheon

	confess_lines = list(
		PLACEHOLDER_PATRON_REBRANDING,
		PLACEHOLDER_PATRON_REBRANDING,
		PLACEHOLDER_PATRON_REBRANDING,
	)

/datum/patron/inhumen/can_pray(mob/living/follower)
	for(var/obj/structure/fluff/psycross/cross in view(7, get_turf(follower)))
		if(cross.divine && !cross.obj_broken)
			to_chat(follower, span_danger("That accursed cross won't let me commune with the Forbidden One!"))
			return FALSE

	return TRUE

/* ----------------- */
/// Encore edit- Zizo needs to become the One Envy. This involves over 500 file changes, so, lmao, see you soon
/datum/patron/inhumen/zizo
	name = ZIZO
	domain = PLACEHOLDER_PATRON_REBRANDING
	desc = PLACEHOLDER_PATRON_REBRANDING
	flaws = PLACEHOLDER_PATRON_REBRANDING
	worshippers = PLACEHOLDER_PATRON_REBRANDING
	sins = PLACEHOLDER_PATRON_REBRANDING
	boons = PLACEHOLDER_PATRON_REBRANDING
	//added_traits = list(TRAIT_CABAL)	No need for this. They have fleshcrafting now.
	devotion_holder = /datum/devotion/inhumen/zizo
	confess_lines = list(
		PLACEHOLDER_PATRON_REBRANDING,
		PLACEHOLDER_PATRON_REBRANDING,
		PLACEHOLDER_PATRON_REBRANDING,
	)
	storyteller = /datum/storyteller/zizo
	added_verbs = list(
		/mob/living/carbon/human/proc/draw_sigil,
		/mob/living/carbon/human/proc/praise,
	)

/datum/patron/inhumen/archdevils
	name = ARCHDEVILS
	domain = PLACEHOLDER_PATRON_REBRANDING
	desc = PLACEHOLDER_PATRON_REBRANDING
	flaws = PLACEHOLDER_PATRON_REBRANDING
	worshippers = PLACEHOLDER_PATRON_REBRANDING
	sins = PLACEHOLDER_PATRON_REBRANDING
	boons = PLACEHOLDER_PATRON_REBRANDING
	added_traits = list(TRAIT_ORGAN_EATER, TRAIT_BLOODDRINKER)
	devotion_holder = /datum/devotion/inhumen/archdevils
	confess_lines = list(
		PLACEHOLDER_PATRON_REBRANDING,
		PLACEHOLDER_PATRON_REBRANDING,
		PLACEHOLDER_PATRON_REBRANDING,
	)
	storyteller = /datum/storyteller/archdevils

/datum/patron/inhumen/deceivers
	name = DECEIVERS
	domain = PLACEHOLDER_PATRON_REBRANDING
	desc = PLACEHOLDER_PATRON_REBRANDING
	flaws = PLACEHOLDER_PATRON_REBRANDING
	worshippers = PLACEHOLDER_PATRON_REBRANDING
	sins = PLACEHOLDER_PATRON_REBRANDING
	boons = PLACEHOLDER_PATRON_REBRANDING
	added_traits = list(TRAIT_DECEIVERS_EYES)
	devotion_holder = /datum/devotion/inhumen/deceivers
	confess_lines = list(
		PLACEHOLDER_PATRON_REBRANDING,
		PLACEHOLDER_PATRON_REBRANDING,
		PLACEHOLDER_PATRON_REBRANDING,
	)
	storyteller = /datum/storyteller/deceivers

/datum/patron/inhumen/hertannea
	name = HERTANNEA
	domain = PLACEHOLDER_PATRON_REBRANDING
	desc = PLACEHOLDER_PATRON_REBRANDING
	flaws = PLACEHOLDER_PATRON_REBRANDING
	worshippers = PLACEHOLDER_PATRON_REBRANDING
	sins = PLACEHOLDER_PATRON_REBRANDING
	boons = PLACEHOLDER_PATRON_REBRANDING
	added_traits = list(TRAIT_CRACKHEAD)
	devotion_holder = /datum/devotion/inhumen/hertannea
	confess_lines = list(
		PLACEHOLDER_PATRON_REBRANDING,
		PLACEHOLDER_PATRON_REBRANDING,
		PLACEHOLDER_PATRON_REBRANDING,
	)
	storyteller = /datum/storyteller/hertannea

/// Encore edit for below- pending whatever the fuck we need to do to swap Zizo to the One Envy. I guess it works but it will definitely need some adjustment
/// Maniac Patron - Their mind is broken by secrets of Zizo/Archdevils combined. They quite possibly know the reality of what happens outside the planet. They may think this is all a game. They are clearly insane.
/datum/patron/inhumen/archdevils_zizo
	name = "The Seven Sages"
	domain = PLACEHOLDER_PATRON_REBRANDING
	desc = PLACEHOLDER_PATRON_REBRANDING
	flaws = PLACEHOLDER_PATRON_REBRANDING
	worshippers = PLACEHOLDER_PATRON_REBRANDING
	sins = PLACEHOLDER_PATRON_REBRANDING
	boons = PLACEHOLDER_PATRON_REBRANDING
	added_traits = list(TRAIT_ORGAN_EATER, TRAIT_BLOODDRINKER, TRAIT_CABAL)
	confess_lines = list(
		PLACEHOLDER_PATRON_REBRANDING,
		PLACEHOLDER_PATRON_REBRANDING,
		PLACEHOLDER_PATRON_REBRANDING,
	)

/datum/patron/inhumen/archdevils_zizo/preference_accessible(datum/preferences/prefs)
	return FALSE

/datum/patron/inhumen/archdevils_zizo/can_pray(mob/living/follower)
	var/datum/antagonist/maniac/dreamer = follower.mind.has_antag_datum(/datum/antagonist/maniac)
	if(dreamer)
		return TRUE
	// if a non-maniac somehow gets this patron,
	// something interesting should happen if they try to pray.
	INVOKE_ASYNC(follower, GLOBAL_PROC_REF(cant_wake_up), follower)  //Something interesting happened.
	message_admins("[ADMIN_LOOKUPFLW(follower)] has been gibbed due to praying as a non-maniac with their patron set to Graggazo. Whoops..")
	return FALSE

/datum/patron/inhumen/archdevils_zizo/hear_prayer(mob/living/follower, message)
	var/datum/antagonist/maniac/dreamer = follower.mind.has_antag_datum(/datum/antagonist/maniac)
	if(!dreamer)
		return FALSE
	if(text2num(message) == dreamer.sum_keys)
		INVOKE_ASYNC(dreamer, TYPE_PROC_REF(/datum/antagonist/maniac, wake_up))
		return TRUE
	. = ..()
