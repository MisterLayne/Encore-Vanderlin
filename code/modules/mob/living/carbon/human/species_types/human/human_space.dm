	/*==============*
	*				*
	*	 Human		*
	*				*
	*===============*/

//	( +1 STR, +1 PER, +4 INT, +1 CON, +2 END, +2 SPD -1 FOR)

/mob/living/carbon/human/species/human/space
	race = /datum/species/human/space

/datum/attribute_holder/sheet/job/species/space
	raw_attribute_list = list(
		STAT_STRENGTH = 1,
		STAT_PERCEPTION = 1,
		STAT_INTELLIGENCE = 4,
		STAT_CONSTITUTION = 1,
		STAT_ENDURANCE = 2,
		STAT_SPEED = 2,
		STAT_FORTUNE = -1
	)

/datum/species/human/space
	name = "Human"
	id = SPEC_ID_HUMAN_SPACE
	desc = PLACEHOLDER_SPECIES_REBRANDING

	default_color = "FFFFFF"
	species_traits = list(EYECOLOR, HAIR, FACEHAIR, LIPS, STUBBLE, OLDGREY)
	inherent_traits = list(TRAIT_NOMOBSWAP)
	use_skintones = TRUE

	possible_ages = NORMAL_AGES_LIST

	changesource_flags = WABBAJACK

	limbs_icon_m = 'icons/roguetown/mob/bodies/m/mm.dmi'	//If we want to be funny, change these in the future? Has to be subtle.
	limbs_icon_f = 'icons/roguetown/mob/bodies/f/fm.dmi'	//We don't want this species to be meta-detectable.

	soundpack_m = /datum/voicepack/male						//Also a funny potential switch, more feasible to stay covert given that this is tied to emotes almost exclusively.
	soundpack_f = /datum/voicepack/female

	offset_features_m = list(
		OFFSET_RING = list(0,0),\
		OFFSET_GLOVES = list(0,0),\
		OFFSET_WRISTS = list(0,0),\
		OFFSET_HANDS = list(0,0),\
		OFFSET_CLOAK = list(0,0),\
		OFFSET_FACEMASK = list(0,0),\
		OFFSET_HEAD = list(0,0),\
		OFFSET_FACE = list(0,0),\
		OFFSET_BELT = list(0,0),\
		OFFSET_BACK = list(0,0),\
		OFFSET_NECK = list(0,0),\
		OFFSET_MOUTH = list(0,0),\
		OFFSET_PANTS = list(0,0),\
		OFFSET_SHIRT = list(0,0),\
		OFFSET_ARMOR = list(0,0),\
		OFFSET_UNDIES = list(0,0),\
	)

	offset_features_f = list(
		OFFSET_RING = list(0,-1),\
		OFFSET_GLOVES = list(0,0),\
		OFFSET_WRISTS = list(0,0),\
		OFFSET_HANDS = list(0,0),\
		OFFSET_CLOAK = list(0,0),\
		OFFSET_FACEMASK = list(0,-1),\
		OFFSET_HEAD = list(0,-1),\
		OFFSET_FACE = list(0,-1),\
		OFFSET_BELT = list(0,0),\
		OFFSET_BACK = list(0,-1),\
		OFFSET_NECK = list(0,-1),\
		OFFSET_MOUTH = list(0,-1),\
		OFFSET_PANTS = list(0,0),\
		OFFSET_SHIRT = list(0,0),\
		OFFSET_ARMOR = list(0,0),\
		OFFSET_UNDIES = list(0,0),\
	)

	statsheet_male = /datum/attribute_holder/sheet/job/species/space

	enflamed_icon = "widefire"

	customizers = list(
		/datum/customizer/organ/eyes/humanoid,
		/datum/customizer/bodypart_feature/hair/head/humanoid,
		/datum/customizer/bodypart_feature/hair/facial/humanoid,
		/datum/customizer/bodypart_feature/accessory,
		/datum/customizer/bodypart_feature/face_detail,
	)
	body_markings = list(
		/datum/body_marking/tonage,
	)

/datum/species/human/space/check_roundstart_eligible()
	return FALSE

/datum/species/human/space/get_possible_names(gender = MALE)
	var/static/list/male_names = file2list('strings/rt/names/human/humnorm.txt')
	var/static/list/female_names = file2list('strings/rt/names/human/humnorf.txt')
	return (gender == FEMALE) ? female_names : male_names

/datum/species/human/space/get_possible_surnames(gender = MALE)
	var/static/list/last_names = file2list('strings/rt/names/human/humnorlast.txt')
	return last_names
