GLOBAL_LIST_INIT(patron_sound_themes, list(
	VISIRES = 'sound/magic/bless.ogg',
	AKAN = 'sound/ambience/noises/mystical (4).ogg',
	POMETTE = 'sound/vo/female/gen/giggle (1).ogg',
	GANI = 'sound/magic/barbroar.ogg',
	GOLERKANH = 'sound/magic/dwarf_chant01.ogg',
	ILIOPE = 'sound/misc/gods/xylix_omen.ogg',
	VALDALA = 'sound/ambience/noises/genspooky (1).ogg',
	MJALLIDHORN = 'sound/items/bucket_transfer (2).ogg',
	MORDSOL = 'sound/vo/male/knight/rage (6).ogg',
	ERDL = 'sound/magic/cosmic_expansion.ogg',
	ENVY = 'sound/misc/gods/zizo_omen.ogg',
	ARCHDEVILS = 'sound/misc/gods/graggar_omen.ogg',
	HERTANNEA = 'sound/misc/gods/baotha_omen.ogg',
	DECEIVERS = 'sound/misc/gods/matthios_omen.ogg'
))

/datum/patron/divine
	abstract_type = /datum/patron/divine
	associated_faith = /datum/faith/divine_pantheon
	profane_words = list("zizo", "cock", "dick", "fuck", "shit", "pussy", "cuck", "cunt", "asshole")
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
/datum/patron/divine/centrist
	name = DIVINE_CENTRIST
	desc = "The worship of the balance and order of things between the Four Elementals equally. This is usually the focus of the Katholikos, the largest sect within the Goblet which acts in favor of all Elementals."
	domain = "Earth, Air, Fire and Frost"
	flaws = "Indecisiveness"
	worshippers = "The Katholikos, high clergy and obsessed zealots"
	sins = "Seeking Divinity, Stifling the Soul"
	boons = "None"
	added_traits = list(TRAIT_DIVINE_CENTRIST)
	devotion_holder = /datum/devotion/divine/centrist
	confess_lines = list(
		"I SEE WHAT THE BLIND MAN SEES!",
		"I SERVE THE STARS!",
		"BY LEAF AND LIMB!",
		"BLOOD IN THE FIRMAMENT! BLOOD IN ALL THINGS!",
	)
	associated_psycross = /obj/item/clothing/neck/psycross/silver/divine


/datum/patron/divine/visires
	name = VISIRES
	domain = "The Goddess of Fire and Wrath"
	desc = "The youngest of the Elemental Gods. A once-mortal given host to the Aspect of Fire and made divine. The worship of Visires represents the plea for passion, life and the will to live; just as much it does the destruction, the hunger and the chaos that it may impose."
	flaws = "Tyrannical, Ill-Tempered, Uncompromising"
	worshippers = "Conquerors, the wrathful, the pupils of the Sun's science"
	sins = "Betrayal, Sloth, Envy"
	boons = "Your stamina regeneration delay is lowered during daytime."
	added_traits = list(TRAIT_APRICITY)
	devotion_holder = /datum/devotion/divine/visires
	confess_lines = list(
		"VISIRES SUNDERS!",
		"THE ASPECT OF FIRE HUNGERS!",
		"I SERVE THE STARS!",
	)
	storyteller = /datum/storyteller/visires
	associated_psycross = /obj/item/clothing/neck/psycross/silver/divine/visires

/datum/patron/divine/akan
	name = AKAN
	domain = "God of Air, the Sky and Heaven"
	desc = "Akan, the Elder, embodies the fundamental element of air. They are an ancient spirit made divine as they would personify the very essence of the wistful, everlasting and free Aspect of the Sky."
	flaws = "Cynical, Isolationist, Unfiltered Honesty"
	worshippers = "Nomads, scholars and the forever-free"
	sins = "Suppressing Truth, Burning Books, Censorship"
	boons = "You learn, dream, and teach apprentices slightly better. Access to roles with magic."
	added_traits = list(TRAIT_TUTELAGE)
	devotion_holder = /datum/devotion/divine/akan
	confess_lines = list(
		"AKAN HEARS, BUT DOES NOT SEE!",
		"I SEE WHAT THE BLIND MAN SEES!",
		"A CLOUD 'BOUT THE ERRANT SOUL!",
	)
	storyteller = /datum/storyteller/akan
	associated_psycross = /obj/item/clothing/neck/psycross/silver/divine/akan

/datum/patron/divine/gani
	name = GANI
	domain = "Mother Goddess of the Earth and Soil"
	desc = "Gani, the Mother, embodies the fundamental element of earth. They are an ancient spirit made divine as they would personify the very essence of the stern, immovable and protective Aspect of Stone. Gani is the world beneath the feet of all. She is the only God of the Four whose omnipresence extends beyond her domain."
	flaws = "Overprotecting, Rebelliousness, Disorderliness"
	worshippers = "All Earthly things, the farms, the huntsmen and matriarchs"
	sins = "Deforestation, Digging Too Deep, Disrespecting Nature"
	boons = "You are immune to kneestingers."
	added_traits = list(TRAIT_KNEESTINGER_IMMUNITY)
	devotion_holder = /datum/devotion/divine/gani
	confess_lines = list(
		"GOLDEN GREENING!",
		"WE SPROUT ANEW!",
		"BY LEAF AND LIMB!",
	)
	storyteller = /datum/storyteller/gani
	associated_psycross = /obj/item/clothing/neck/psycross/silver/divine/gani

/datum/patron/divine/mjallidhorn
	name = MJALLIDHORN
	domain = "The Warrior God of Ice"
	desc = "Mjhallidhorn, the Warrior, embodies the fundamental element of ice. They are a once-mortal made divine as they would personify the very essence of the ruthless, brutal and materialistic Aspect of Frost. Mjallidhorn is an Elemental locked in battle in the far north against the hordes of Hell, perhaps forevermore."
	worshippers = "Warriors, sellswords, justiciers and freedom fighters"
	flaws= "Reckless, Stubborn, Destructive"
	sins = "Fear, Hubris, Forgetfulness"
	boons = "Leeches will drain very little of your blood."
	added_traits = list(TRAIT_LEECHIMMUNE)
	devotion_holder = /datum/devotion/divine/mjallidhorn
	confess_lines = list(
		"THE NORTH'S MADNESS!",
		"BLOOD IN THE FIRMAMENT! BLOOD IN ALL THINGS!",
		"I FEAR NOT DEATH, THE FOREVER WAR AWAITS ME!",
	)
	storyteller = /datum/storyteller/mjallidhorn
	associated_psycross = /obj/item/clothing/neck/psycross/silver/divine/mjallidhorn

/datum/patron/divine/valdala
	name = VALDALA
	desc = PLACEHOLDER_PATRON_REBRANDING
	domain = PLACEHOLDER_PATRON_REBRANDING
	flaws = PLACEHOLDER_PATRON_REBRANDING
	worshippers = PLACEHOLDER_PATRON_REBRANDING
	sins = PLACEHOLDER_PATRON_REBRANDING
	boons = PLACEHOLDER_PATRON_REBRANDING
	added_traits = list(TRAIT_SOUL_EXAMINE, TRAIT_DEATHSIGHT)
	devotion_holder = /datum/devotion/divine/valdala
	confess_lines = list(
		PLACEHOLDER_PATRON_REBRANDING,
		PLACEHOLDER_PATRON_REBRANDING,
		PLACEHOLDER_PATRON_REBRANDING,
	)
	storyteller = /datum/storyteller/valdala
	associated_psycross = /obj/item/clothing/neck/psycross/silver/divine/valdala

/datum/patron/divine/mordsol
	name = MORDSOL
	desc = PLACEHOLDER_PATRON_REBRANDING
	domain = PLACEHOLDER_PATRON_REBRANDING
	flaws = PLACEHOLDER_PATRON_REBRANDING
	worshippers = PLACEHOLDER_PATRON_REBRANDING
	sins = PLACEHOLDER_PATRON_REBRANDING
	boons = PLACEHOLDER_PATRON_REBRANDING
	added_traits = list(TRAIT_SHARPER_BLADES)
	devotion_holder = /datum/devotion/divine/mordsol
	confess_lines = list(
		PLACEHOLDER_PATRON_REBRANDING,
		PLACEHOLDER_PATRON_REBRANDING,
		PLACEHOLDER_PATRON_REBRANDING,
	)
	storyteller = /datum/storyteller/mordsol
	associated_psycross = /obj/item/clothing/neck/psycross/silver/divine/mordsol

/datum/patron/divine/iliope
	name = ILIOPE
	desc = "A demi-deity of Akan's court, both famous and infamous for their sway over the forces of luck. Iliope is known for the inspiration of many a bards lyric. Speaks through their gift to man; the Tarot deck."
	domain = "Demigod of trickery, dreams and inspiration"
	flaws = "Manipulative, Conniving, Deceitful"
	worshippers = "Gamblers, bards, artists, and the silver-tongued"
	sins = PLACEHOLDER_PATRON_REBRANDING
	boons = "Dice rolls and gambling machines generally favor your hand."
	added_traits = list(TRAIT_BLACKLEG)
	devotion_holder = /datum/devotion/divine/iliope
	confess_lines = list(
		"VISIRES IS MY LIGHT!",
		"AKAN FLIES FREE AND TOO FAR FROM ME!",
		"GANI PROVIDES!",
		"GOLER KANH IS MY MUSE!",
		"MJALLIDHORN IS MY TERROR!",
	)
	storyteller = /datum/storyteller/iliope
	associated_psycross = /obj/item/clothing/neck/psycross/silver/divine/iliope

/datum/patron/divine/erdl
	name = ERDL
	desc = "Known as the Bloodfather, Erdl is the practitioner of the most complex arts of medicine. Their place in the Pantheon is one of friction, as they detest the idea of death itself. His worshippers are forever at odds with the Frost Pantheon as a result. Nonetheless, Erdl's pursuit of physical sciences endures through their spirit; those with Their blessing are commonly seen as instruments of Erdl's very hand. Or, in their own terms, hosts for their God."
	domain = "Demigod of medica, fleshcrafting and healing science"
	flaws = "Apathy, Visceral Curiosity, Detachment"
	worshippers = "Physicians, Great Scientists, Practitioners"
	sins = PLACEHOLDER_PATRON_REBRANDING
	boons = PLACEHOLDER_PATRON_REBRANDING
	added_traits = list(TRAIT_ROT_EATER)
	devotion_holder = /datum/devotion/divine/erdl
	confess_lines = list(
		PLACEHOLDER_PATRON_REBRANDING,
		PLACEHOLDER_PATRON_REBRANDING,
		PLACEHOLDER_PATRON_REBRANDING,
	)
	storyteller = /datum/storyteller/erdl
	associated_psycross = /obj/item/clothing/neck/psycross/silver/divine/erdl

/datum/patron/divine/erdl/preference_accessible(datum/preferences/prefs)
	. = ..()
	if(!.)
		return

	// These guys believe in a wurm, not erdl. They won't accept erdl as not being a giant acid wurm.
	return prefs.pref_species.id != SPEC_ID_DWARF_SUBTERRAN

/datum/patron/divine/golerkanh
	name = GOLERKANH
	desc = "A servant deity to Gani. The creator of technology, and he who first harnessed land and rock to serve mortal will."
	domain = "Demigod of the Hand, Purveyor of Stone"
	flaws = PLACEHOLDER_PATRON_REBRANDING
	worshippers = "Smiths, engineers and tinkerers"
	sins = PLACEHOLDER_PATRON_REBRANDING
	boons = PLACEHOLDER_PATRON_REBRANDING
	added_traits = list(TRAIT_BETTER_SLEEP)
	devotion_holder = /datum/devotion/divine/golerkanh
	confess_lines = list(
		"IN MY HAND IS ALL MORTAL POWER!",
		"WITH GANI'S EDGE I STRIKE!",
		"I AM AN INSTRUMENT OF CREATION!",
	)
	storyteller = /datum/storyteller/golerkanh
	associated_psycross = /obj/item/clothing/neck/psycross/silver/divine/golerkanh

/datum/patron/divine/pomette
	name = POMETTE
	desc = PLACEHOLDER_PATRON_REBRANDING
	domain = PLACEHOLDER_PATRON_REBRANDING
	flaws = PLACEHOLDER_PATRON_REBRANDING
	worshippers = PLACEHOLDER_PATRON_REBRANDING
	sins = PLACEHOLDER_PATRON_REBRANDING
	boons = PLACEHOLDER_PATRON_REBRANDING
	added_traits = list(TRAIT_EXTEROCEPTION)
	devotion_holder = /datum/devotion/divine/pomette
	confess_lines = list(
		PLACEHOLDER_PATRON_REBRANDING,
		PLACEHOLDER_PATRON_REBRANDING,
		PLACEHOLDER_PATRON_REBRANDING,
	)
	storyteller = /datum/storyteller/pomette
	associated_psycross = /obj/item/clothing/neck/psycross/silver/divine/pomette
