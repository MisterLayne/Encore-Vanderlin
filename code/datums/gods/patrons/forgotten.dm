/datum/patron/angros
	name = "Angros"
	display_name = "Absolutionist Angrosian"
	desc = PLACEHOLDER_PATRON_REBRANDING
	domain = PLACEHOLDER_PATRON_REBRANDING
	flaws = PLACEHOLDER_PATRON_REBRANDING
	worshippers = PLACEHOLDER_PATRON_REBRANDING
	sins = PLACEHOLDER_PATRON_REBRANDING
	boons = PLACEHOLDER_PATRON_REBRANDING

	associated_faith = /datum/faith/angros

	confess_lines = list(
		PLACEHOLDER_PATRON_REBRANDING,
		PLACEHOLDER_PATRON_REBRANDING,
		PLACEHOLDER_PATRON_REBRANDING,
	)

/datum/patron/angros/can_pray(mob/living/carbon/human/follower)
	//We just kind of assume the follower is a human here
	if(
		istype(follower.wear_wrists, /obj/item/clothing/neck/psycross) || istype(follower.wear_neck, /obj/item/clothing/neck/psycross) || istype(follower.get_active_held_item(), /obj/item/clothing/neck/psycross)
		)
		return TRUE

	to_chat(follower, span_danger("I can not talk to Him... I need His idol!"))
	return FALSE

/datum/patron/angros/extremist
	display_name = "Salvationist Angrosian"
	desc = PLACEHOLDER_PATRON_REBRANDING
	flaws = PLACEHOLDER_PATRON_REBRANDING
	worshippers = PLACEHOLDER_PATRON_REBRANDING
	sins = PLACEHOLDER_PATRON_REBRANDING
	confess_lines = list(
		PLACEHOLDER_PATRON_REBRANDING,
		PLACEHOLDER_PATRON_REBRANDING,
		PLACEHOLDER_PATRON_REBRANDING,
	)


