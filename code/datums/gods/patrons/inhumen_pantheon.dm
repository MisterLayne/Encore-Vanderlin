/datum/patron/inhumen
	name = null
	associated_faith = /datum/faith/inhumen_pantheon

	profane_words = list()
	confess_lines = list(
		"PSYDON AND HIS CHILDREN ARE THE DEMIURGE!",
		"THE TEN ARE WORTHLESS COWARDS!",
		"THE TEN ARE DECEIVERS!"
	)

/datum/patron/inhumen/can_pray(mob/living/follower)
	for(var/obj/structure/fluff/psycross/cross in view(7, get_turf(follower)))
		if(cross.divine && !cross.obj_broken)
			to_chat(follower, span_danger("That accursed cross won't let me commune with the Forbidden One!"))
			return FALSE

	return TRUE

/* ----------------- */

/datum/patron/inhumen/zizo // The One Envy considers those not of the Shirleigh dynasty to be beneath her notice, beyond carrying out occasional acts of capciciousness for her own amusement. She does not grant miracles to those not of Alyssandrine and Malryck's blood.
	name = ZIZO
	display_name = "The Jealous God"
	domain = "Domotan Island, and seemingly little else."
	desc = "She whose name is unknown, she whose agenda is lost; the Jealous God embodies no elemental aspect, and serves neither the divine nor ilk of Hell. Her solemn devotees are the royal family of Etgard itself, the Shirleigh Dynasty and their constituents. They are the only divine to lay absolute claim over Domotan Island, and is thus praised only in hushed tones beyond the walls of Etgard Keep."
	flaws = "Unknown."
	worshippers = "The Shirleigh Dynasty, the brainwashed and the desperate"
	sins = "Unknown."
	boons = "You can recognise other worshippers at a glance. For the Shirleighs; access to innate and sinister miracles, and the awareness of when and where a mortal meets their demise, but not how. For all else; nothing."
	added_traits = list(TRAIT_CABAL_CHUD)
	devotion_holder = /datum/devotion/inhumen/zizo
	confess_lines = list(
		"SHE SEES! SHE LAUGHS!",
		"SHE LAUGHS! SHE SEES!",
		"SHE KNOWS! SHE KNOWS!",
	)
	storyteller = /datum/storyteller/zizo
	added_verbs = list(
		/mob/living/carbon/human/proc/draw_sigil,
		/mob/living/carbon/human/proc/praise,
	)

/datum/patron/inhumen/graggar
	name = GRAGGAR
	display_name = "The Archdevils"
	domain = "All heretical anti-deities subservient to Hell."
	desc = "The Archdevils of Hell, despite their hand in bringing the world to its knees, attract worshippers for any number of reasons - for vengeance, for power, from indoctrination, or from those who yet quake in terror from the threat it poses - but such belief is a poisoned chalice, for Hell's power corrupts all it touches. You may worship the Archdevils directly, or worship a Deceiver God who has been corrupted by Hell's power; but whatever the case, you seek the disruption of the Elemental balance and the downfall of the Aspects."
	flaws = "Rage, hatred, bloodthirst."
	worshippers = "The vengeful, the power-hungry, the indoctrinated, the fearful."
	sins = "Compassion, frailty, servility."
	boons = "You are drawn to the flavour of raw flesh and organs, and rotten food, and may consume without worry. You can recognise other Archdevil worshippers at a glance, as well as servants of other Hell-corrupted deities."
	added_traits = list(TRAIT_ROT_EATER, TRAIT_ORGAN_EATER, TRAIT_ARCHDEVILS, TRAIT_CORRUPTED)
	devotion_holder = /datum/devotion/inhumen/graggar
	confess_lines = list(
		"CLAW AT THE SOIL! BREAK THE FIRMAMENT!",
		"RELEASE THE OLD ONES! RETURN THEIR CROWN!",
		"WHAT ONCE WAS WILL BECOME NOW, AGAIN!",
	)
	storyteller = /datum/storyteller/graggar

/datum/patron/inhumen/matthios
	name = MATTHIOS
	display_name = "The Deceiver Gods"
	domain = "God of Thievery, Ill-Gotten Gains, and Highwaymen"
	desc = "Legendary humen bandit whose name was attributed to countless great thefts. It is because of his legacy that nobles clutch their coin purses to their chests in town."
	flaws = "Pride, Greed, Orneriness"
	worshippers = "Outlaws, Noble-Haters, Downtrodden Peasantry"
	sins = "Clumsiness, Stupidity, Humility"
	boons = "You can see the most expensive item someone is carrying."
	added_traits = list(TRAIT_MATTHIOS_EYES)
	devotion_holder = /datum/devotion/inhumen/matthios
	confess_lines = list(
		"MATTHIOS STEALS FROM THE WORTHLESS!",
		"MATTHIOS IS JUSTICE FOR THE COMMON MAN!",
		"MATTHIOS IS MY LORD, I SHALL BE HIS MARTYR!",
	)
	storyteller = /datum/storyteller/matthios

/datum/patron/inhumen/baotha
	name = BAOTHA
	domain = "Goddess of Drugs, Self-Preservation, and Remorseless Joy"	//Bright-dyed hair falls within 'remorseless joy.' Joy for one's self at expense of the setting. Same for her music taste.
	desc = "Ascended, formerly disgraced tiefling queen, notorious for having a mind elsewhere. Drove her kingdom into the ground through her demands and addictions. The first tiefling noble, last tiefling noble, and sole reason there are no more tiefling nobles. As she preaches to her followers, 'Joy at all costs!'"
	flaws = "Manipulation, Self-Destruction, Willingness to Sacrifice Others"
	worshippers = "Addicts, Hedonists, Pink-Haired Harlots"
	sins = "Sobriety, Self-Sacrifice, Faltering Willpower"
	boons = "You will never overdose on drugs."
	added_traits = list(TRAIT_CRACKHEAD)
	devotion_holder = /datum/devotion/inhumen/baotha
	confess_lines = list(
		"LIVE, LAUGH, LOVE! IN BAOTHA'S NAME!",
		"JOY AT ALL COSTS! BAOTHA'S TEACHINGS REIGN!",
		"BAOTHA'S WHISPERS CALM MY MIND!",
	)
	storyteller = /datum/storyteller/baotha

/// Maniac Patron - Their mind is broken by secrets of One Envy/Archdevil combined. They quite possibly know the reality of what happens outside the planet. They may think this is all a game. They are clearly insane.
/datum/patron/inhumen/graggar_zizo
	name = "Graggazo"
	domain = "Ascended God who slaughtered her kind in ascension, the Dark Sini-Star of Unnatural Beasts, Forbidden Magic, and Unbridled Hatred."
	desc = "Became the first snow orc upon ascension through his habit of consuming the bodies of those he conquered. His forces continue to ravage the lands in her name. He proves that any with will can achieve divinity... though at a cost. MAKE THIS MAKE SENSE. MY MIND! MY MIND!!"
	flaws = "Nothing, Everything, Nothing"
	worshippers = "Broken Minds, Overshared Secrets, Space-Faring Species Like You, Misanthropes"
	sins = "The Unseen, Secrets, Worthless Pigs"
	boons = "You are drawn to the flavour of other followers of One Envy, and may see them when you consume without worry."
	added_traits = list(TRAIT_ORGAN_EATER, TRAIT_CABAL)
	confess_lines = list(
		"WHERE AM I!",
		"NONE OF THIS IS REAL!",
		"WHO AM I WORSHIPPING?!"
	)
	preference_accessible = FALSE

/datum/patron/inhumen/graggar_zizo/can_pray(mob/living/follower)
	var/datum/antagonist/maniac/dreamer = follower.mind.has_antag_datum(/datum/antagonist/maniac)
	if(dreamer)
		return TRUE
	// if a non-maniac somehow gets this patron,
	// something interesting should happen if they try to pray.
	INVOKE_ASYNC(follower, GLOBAL_PROC_REF(cant_wake_up), follower)  //Something interesting happened.
	return FALSE

/datum/patron/inhumen/graggar_zizo/hear_prayer(mob/living/follower, message)
	var/datum/antagonist/maniac/dreamer = follower.mind.has_antag_datum(/datum/antagonist/maniac)
	if(!dreamer)
		return FALSE
	if(text2num(message) == dreamer.sum_keys)
		INVOKE_ASYNC(dreamer, TYPE_PROC_REF(/datum/antagonist/maniac, wake_up))
		return TRUE
	. = ..()
