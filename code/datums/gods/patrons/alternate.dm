/datum/patron/alternate
	abstract_type = /datum/patron/alternate
	associated_faith = /datum/faith/alternate

//no idea what any of this is but it all needs swapped out anyway so placeholder time
/datum/patron/alternate/wurm
	name = "The Wurm"
	desc = PLACEHOLDER_PATRON_REBRANDING
	domain = PLACEHOLDER_PATRON_REBRANDING
	flaws = PLACEHOLDER_PATRON_REBRANDING
	worshippers = PLACEHOLDER_PATRON_REBRANDING
	sins = PLACEHOLDER_PATRON_REBRANDING
	boons = PLACEHOLDER_PATRON_REBRANDING

	confess_lines = list(
		PLACEHOLDER_PATRON_REBRANDING,
		PLACEHOLDER_PATRON_REBRANDING,
		PLACEHOLDER_PATRON_REBRANDING,
		PLACEHOLDER_PATRON_REBRANDING,
	)

	allowed_races = list(SPEC_ID_DWARF_SUBTERRAN)

/datum/patron/alternate/great_hunt
	name = "The Great Hunt"
	display_name = "The Great Hunt (Unproven)"
	desc = PLACEHOLDER_PATRON_REBRANDING
	boons = PLACEHOLDER_PATRON_REBRANDING
	domain = PLACEHOLDER_PATRON_REBRANDING
	flaws = PLACEHOLDER_PATRON_REBRANDING
	worshippers = PLACEHOLDER_PATRON_REBRANDING
	sins = PLACEHOLDER_PATRON_REBRANDING

	confess_lines = list(
		PLACEHOLDER_PATRON_REBRANDING,
		PLACEHOLDER_PATRON_REBRANDING,
		PLACEHOLDER_PATRON_REBRANDING,
		PLACEHOLDER_PATRON_REBRANDING
	)
	devotion_holder = /datum/devotion/alternate/great_hunt

/datum/patron/alternate/great_hunt/can_pray(mob/living/carbon/human/follower)
	var/amulet_type = /obj/item/clothing/neck/psycross/great_hunt

	if(istype(follower.wear_wrists, amulet_type) || istype(follower.wear_neck, amulet_type) || istype(follower.get_active_held_item(), amulet_type))
		return TRUE

	to_chat(follower, span_danger("I need an amulet of the hunt for my prayers to be heard..."))
	return FALSE

/datum/patron/alternate/great_hunt/proven
	display_name = "The Great Hunt (Proven)"
	added_traits = list(TRAIT_MANEATER_IMMUNITY, TRAIT_ENTANGLER_IMMUNITY)
	boons = "You are left untouched by the flesh eating plants."

/datum/patron/alternate/great_hunt/proven/preference_accessible(datum/preferences/prefs)
	return FALSE

/datum/patron/alternate/black_briar
	name = "The Black Briar"
	desc = "The Briar is not worshipped, it is joined. Roots in the body connect the consciousnesses of those afflicted into a Gestalt. During assimilation, many Afflicted desire to spread from their infection point."
	domain = "The Black Briar"
	flaws = "...really?"
	worshippers = "The Gestalt"
	sins = "Denying Your Beauty, Resisting the Gestalt"
	boons = "Beauty of the Umbral Rosa"

	confess_lines = list(
		"WE ARE BEAUTIFUL!",
		"LISTEN TO OUR SONG!",
		"CUT MY FLESH SO I MAY SPROUT!",
		"OH AKAN, SWEET AKAN, YOUR GAZE IS THE NECTAR IN WHICH I DRINK!",
	)
	added_traits = list(TRAIT_BRIAR_HOST)

//todo: unique prayer system?
/datum/patron/alternate/black_briar/preference_accessible(datum/preferences/prefs)
	return FALSE
