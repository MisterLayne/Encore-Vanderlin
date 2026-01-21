GLOBAL_LIST_INIT(patron_sound_themes, list(
	ASTRATA = 'sound/magic/bless.ogg',
	NOC = 'sound/ambience/noises/mystical (4).ogg',
	EORA = 'sound/vo/female/gen/giggle (1).ogg',
	DENDOR = 'sound/magic/barbroar.ogg',
	MALUM = 'sound/magic/dwarf_chant01.ogg',
	XYLIX = 'sound/misc/gods/xylix_omen_male_female.ogg',
	NECRA = 'sound/ambience/noises/genspooky (1).ogg',
	ABYSSOR = 'sound/items/bucket_transfer (2).ogg',
	RAVOX = 'sound/vo/male/knight/rage (6).ogg',
	PESTRA = 'sound/magic/cosmic_expansion.ogg',
	ZIZO = 'sound/misc/gods/zizo_omen.ogg',
	GRAGGAR = 'sound/misc/gods/graggar_omen.ogg',
	BAOTHA = 'sound/misc/gods/baotha_omen.ogg',
	MATTHIOS = 'sound/misc/gods/matthios_omen.ogg'
))

/datum/patron/divine
	name = null
	associated_faith = /datum/faith/divine_pantheon
	var/associated_psycross = /obj/item/clothing/neck/psycross

/datum/patron/divine/can_pray(mob/living/carbon/human/follower)
	//you can pray anywhere inside a church
	if(istype(get_area(follower), /area/indoors/town/church))
		return TRUE

	for(var/obj/structure/fluff/psycross/cross in view(4, get_turf(follower)))
		if(!cross.obj_broken)
			return TRUE

	if(istype(follower.wear_wrists, associated_psycross) || istype(follower.wear_neck, associated_psycross) || istype(follower.get_active_held_item(), associated_psycross))
		return TRUE


	to_chat(follower, span_danger("I need an amulet of my patron, or a nearby Pantheon Cross, for my prayers to be heard..."))
	return FALSE

/* ----------------- */

/datum/patron/divine/astrata
	name = ASTRATA
	display_name = "Visires"
	domain = "The Youthful; Aspect and sole remainder of the Court of Fire."
	desc = "The youngest of the Elemental Gods. A once-mortal given host to the Aspect of Fire and made divine. The worship of Visires represents the plea for passion, life and the will to live; just as much it does the destruction, the hunger and the chaos that it may impose."
	flaws = "Tyrannical, ill-tempered, uncompromising."
	worshippers = "Conquerors, the wrathful, the pupils of the Sun's science."
	sins = "Charity, overt benevolence without gain, giving handouts."
	boons = "Your stamina regeneration delay is lowered during daytime."
	added_traits = list(TRAIT_APRICITY)
	devotion_holder = /datum/devotion/divine/astrata
	confess_lines = list(
		"VISIRES SUNDERS!",
		"THE ASPECT OF FIRE HUNGERS!",
		"I SERVE THE STARS!",
	)
	storyteller = /datum/storyteller/astrata
	associated_psycross = /obj/item/clothing/neck/psycross/silver/astrata

/datum/patron/divine/noc
	name = NOC
	display_name = "Akan"
	domain = "The Elder; Aspect and ruler of the Court of Air. God of the sky and heavens."
	desc = "Akan, the Elder, embodies the fundamental element of air. They are an ancient spirit made divine as they would personify the very essence of the wistful, everlasting and free Aspect of the Sky."
	flaws = "Fleeting, non-commital, unfiltered honesty."
	worshippers = "Nomads, scholars and the forever-free."
	sins = "Suppressing truth, burning books, willful ignorance."
	boons = "You learn, dream, and teach apprentices slightly better. The veil of darkness parts easier for you under the light of the moon."
	added_traits = list(TRAIT_NIGHT_OWL, TRAIT_TUTELAGE)
	devotion_holder = /datum/devotion/divine/noc
	confess_lines = list(
		"AKAN HEARS, BUT DOES NOT SEE!",
		"I SEE WHAT THE BLIND MAN SEES!",
		"A CLOUD 'BOUT THE ERRANT SOUL!",
	)
	storyteller = /datum/storyteller/noc
	associated_psycross = /obj/item/clothing/neck/psycross/silver/noc

/datum/patron/divine/dendor
	name = DENDOR
	display_name = "Gani"
	domain = "The Mother; Aspect and ruler of the Court of Earth. Goddess of the stone and soil."
	desc = "Gani, the Mother, embodies the fundamental element of earth. They are an ancient spirit made divine as they would personify the very essence of the stern, immovable and protective Aspect of Stone. Gani is the world beneath the feet of all. She is the only God of the Four whose omnipresence extends beyond her domain."
	flaws = "Overbearing, autophobic, anxiety-prone."
	worshippers = "All Earthly things, the farms, the huntsmen and matriarchs."
	sins = "Cruelty, isolationism, disrespect of nature."
	boons = "You are immune to kneestingers. You instinctively understand when people are stressed, in pain, or hungry."
	added_traits = list(TRAIT_KNEESTINGER_IMMUNITY, TRAIT_EMPATH)
	devotion_holder = /datum/devotion/divine/dendor
	confess_lines = list(
		"GOLDEN GREENING!",
		"WE SPROUT ANEW!",
		"BY LEAF AND LIMB!",
	)
	storyteller = /datum/storyteller/dendor
	associated_psycross = /obj/item/clothing/neck/psycross/silver/dendor

/datum/patron/divine/abyssor
	name = ABYSSOR
	domain = "The Warrior; Aspect and ruler of the Court of Frost."
	desc = "Mjhallidhorn, the Warrior, embodies the fundamental element of ice. They are a once-mortal made divine as they would personify the very essence of the ruthless, brutal and materialistic Aspect of Frost. Mjallidhorn is an Elemental locked in battle in the far north against the hordes of Hell, perhaps forevermore."
	flaws= "Reckless, stubborn, destructive."
	worshippers = "Warriors, sellswords, the vengeful, sailors"
	sins = "Cowardice, hesitation, Forgetfulness"
	boons = "Leeches will drain very little of your blood."
	added_traits = list(TRAIT_LEECHIMMUNE)
	devotion_holder = /datum/devotion/divine/abyssor
	confess_lines = list(
		"THE NORTH'S MADNESS!",
		"BLOOD IN THE FIRMAMENT! BLOOD IN ALL THINGS!",
		"I FEAR NOT DEATH, THE FOREVER WAR AWAITS ME!",
	)
	storyteller = /datum/storyteller/abyssor
	associated_psycross = /obj/item/clothing/neck/psycross/silver/abyssor

/datum/patron/divine/necra
	name = NECRA
	domain = "Demi-deity of the Court of Frost; The Valkyrie, shepherd of souls."
	desc = "The Veiled Lady, once close partner to Angros. She created the Nine others from his corpse, guiding them from the Underworld."
	flaws = "Unchanging, Apathetic, Easy to Bore"
	worshippers = "Orderlies, Gravetenders, Mourners"
	sins = "Heretical Magic, Untimely Death, Disturbance of Rest"
	boons = "You may see the presence of a soul in a body."
	added_traits = list(TRAIT_SOUL_EXAMINE)
	devotion_holder = /datum/devotion/divine/necra
	confess_lines = list(
		"ALL SOULS FIND THEIR WAY TO NECRA!",
		"THE UNDERMAIDEN IS OUR FINAL REPOSE!",
		"I FEAR NOT DEATH, THE VALKYRIE AWAITS ME!",
	)
	storyteller = /datum/storyteller/necra
	associated_psycross = /obj/item/clothing/neck/psycross/silver/necra

/datum/patron/divine/ravox
	name = RAVOX
	domain = "Demi-deity of the Court of Frost; The Righteous, servant of honour and justice."
	desc = "Mordsol, once Al'aqshir. Water, once fire. He is one of the oldest and has a storied past. Friend to Akan, servant to Angros, champion of Mjallidhorn; in modernity, Mordsol is part of the Court of Frost. He represents the pursuit of honourable combat and true justice, as opposed to blind obedience to codified, written mortal laws; and reminds the worshippers of Frost to never let their hearts truly freeze."
	flaws = "Recalcitrant"
	worshippers = "Warriors, Sellswords, Guardsmen"
	sins = "Cowardice, Cruelty, Stagnation"
	boons = "Your used weapons dull slower."
	added_traits = list(TRAIT_SHARPER_BLADES)
	devotion_holder = /datum/devotion/divine/ravox
	confess_lines = list(
		"RAVOX IS JUSTICE!",
		"THROUGH STRIFE, GRACE!",
		"THE DRUMS OF WAR BEAT IN MY CHEST!",
	)
	storyteller = /datum/storyteller/ravox
	associated_psycross = /obj/item/clothing/neck/psycross/silver/ravox

/datum/patron/divine/xylix
	name = XYLIX
	domain = "Demi-deity of the Court of Air; The Fool, comedy and tragedy."
	desc = "A demi-deity of Akan's court, both famous and infamous for their sway over the forces of luck. Iliope is known for the inspiration of many a bards lyric. Speaks through their gift to man; the Tarot deck."
	flaws = "Petulance, Deception, Gambling-Prone"
	worshippers = "Cheats, Performers, The Hopeless"
	sins = "Boredom, Predictability, Routine"
	boons = "You can rig different forms of gambling in your favor."
	added_traits = list(TRAIT_BLACKLEG)
	devotion_holder = /datum/devotion/divine/xylix
	confess_lines = list(
		"VISIRES IS MY LIGHT!",
		"AKAN FLIES FREE AND TOO FAR FROM ME!",
		"GANI PROVIDES!",
		"MJALLIDHORN IS MY TERROR!",
		"MORDSOL IS JUSTICE!",
		"ALL SOULS FIND THEIR WAY TO VALDALA!",
		"HAHAHAHA! AHAHAHA! HAHAHAHA!", //the only iliope-related confession
		"ERDL SOOTHES ALL ILLS!",
		"GOLER KANH IS MY MUSE!",
		"POMETTE BRINGS US TOGETHER!",
	)
	storyteller = /datum/storyteller/xylix
	associated_psycross = /obj/item/clothing/neck/psycross/silver/ravox

/datum/patron/divine/pestra
	name = PESTRA
	domain = "Demi-deity of the Court of Air; The Thaumaturge, sculptor of flesh."
	desc = "A mistake; Angros' intestines left behind. She slithered out, bringing forth the cycle of life and decay."
	flaws = "Drunkenness, Crudeness, Irresponsibility"
	worshippers = "The Ill and Infirm, Alchemists, Physicians"
	sins = "´Curing´ Abnormalities, Refusing to Help Unfortunates, Groveling"
	boons = "You may consume rotten food without being sick."
	added_traits = list(TRAIT_LEECHIMMUNE)
	devotion_holder = /datum/devotion/divine/pestra
	confess_lines = list(
		"ERDL SOOTHES ALL ILLS!",
		"DECAY IS A CONTINUATION OF LIFE!",
		"MY AFFLICTION IS MY TESTAMENT!",
	)
	storyteller = /datum/storyteller/pestra
	associated_psycross = /obj/item/clothing/neck/psycross/silver/pestra

/datum/patron/divine/malum
	name = MALUM
	domain = "Demi-deity of the Court of Earth; The Shaper, divine artifice."
	desc = "A servant deity to Gani. The creator of technology, and he who first harnessed land and rock to serve mortal will."
	flaws = "Obsessive, Exacting, Overbearing"
	worshippers = "Smiths, engineers and tinkerers"
	sins = "Cheating, Shoddy Work, Suicide"
	boons = "You recover more energy when sleeping."
	added_traits = list(TRAIT_BETTER_SLEEP)
	devotion_holder = /datum/devotion/divine/malum
	confess_lines = list(
		"IN MY HAND IS ALL MORTAL POWER!",
		"WITH GANI'S EDGE I STRIKE!",
		"I AM AN INSTRUMENT OF CREATION!",
	)
	storyteller = /datum/storyteller/malum
	associated_psycross = /obj/item/clothing/neck/psycross/silver/malum

/datum/patron/divine/eora
	name = EORA
	domain = "Demi-deity of the Court of Earth; The Daughter, love transcendent."
	desc = "Crafted from the heart of Angros, a spreader of love and beauty, and strengthener of bonds."
	flaws= "Naivete, Impulsiveness, Bigotry"
	worshippers = "Mothers, Artists, Married Couples"
	sins = "Sadism, Abandonment, Ruining Beauty"
	boons = "You can understand others' needs better."
	added_traits = list(TRAIT_KNEESTINGER_IMMUNITY, TRAIT_EMPATH, TRAIT_EXTEROCEPTION)
	devotion_holder = /datum/devotion/divine/eora
	confess_lines = list(
		"POMETTE BRINGS US TOGETHER!",
		"HER BEAUTY IS EVEN IN THIS TORMENT!",
		"I LOVE YOU, EVEN AS YOU TRESPASS AGAINST ME!",
	)
	storyteller = /datum/storyteller/eora
	associated_psycross = /obj/item/clothing/neck/psycross/silver/eora
