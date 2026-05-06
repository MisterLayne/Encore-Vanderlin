GLOBAL_LIST_INIT(patron_sound_themes, list(
	VISIRES = 'sound/magic/bless.ogg',
	AKAN = 'sound/ambience/noises/mystical (4).ogg',
	POMETTE = 'sound/vo/female/gen/giggle (1).ogg',
	GANI = 'sound/magic/barbroar.ogg',
	GOLERKANH = 'sound/magic/dwarf_chant01.ogg',
	ILIOPE = 'sound/misc/gods/xylix_omen.ogg',
	NECRA = 'sound/ambience/noises/genspooky (1).ogg',
	MJALLIDHORN = 'sound/items/bucket_transfer (2).ogg',
	RAVOX = 'sound/vo/male/knight/rage (6).ogg',
	ERDL = 'sound/magic/cosmic_expansion.ogg',
	ZIZO = 'sound/misc/gods/zizo_omen.ogg',
	GRAGGAR = 'sound/misc/gods/graggar_omen.ogg',
	HERTANNEA = 'sound/misc/gods/baotha_omen.ogg',
	MATTHIOS = 'sound/misc/gods/matthios_omen.ogg'
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
	domain = "Unity and Conflict. Denizens of the Eternal Plane."
	desc = "Worshipping The Ten equally. Worship in such a manner is tolerated, but greatly disapproved of. The Ten rarely give their blessings to those who do not give single-minded adoration to a single diety."
	flaws = "Discordant, Unyielding, Uninterested."
	worshippers = "The Meek and The Indecisive"
	sins = "Temptation, Ignorance, Denial"
	boons = "The Ten pull for your devotion."
	added_traits = list(TRAIT_DIVINE_CENTRIST)
	devotion_holder = /datum/devotion/divine/centrist
	confess_lines = list(
		"THE TEN GUIDE US!",
		"THE TEN PROTECT US!",
		"I SERVE THE DIVINE TEN!",
	)
	associated_psycross = /obj/item/clothing/neck/psycross/silver/divine


/datum/patron/divine/visires
	name = VISIRES
	domain = "The Goddess of Fire and Wrath"
	desc = "The youngest of the Elemental Gods. A once-mortal given host to the Aspect of Fire and made divine. The worship of Visires represents the plea for passion, life and the will to live; just as much it does the destruction, the hunger and the chaos that it may impose."
	flaws = "Tyrannical, Ill-Tempered, Uncompromising"
	worshippers = "Conquerors, the wrathful, the pupils of the Sun's science"
	sins = "Betrayal, Sloth, Witchcraft"
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
	domain = "God of Nature and Beasts"
	desc = "Crafted from the bones of Psydon as the embodiment of the natural world. Driven mad with time."
	flaws = "Madness, Rebelliousness, Disorderliness"
	worshippers = "Druids, Beasts, Madmen"
	sins = "Deforestation, Overhunting, Disrespecting Nature"
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
	domain = "God of Seas and Storms"
	desc = "Crafted from the blood of Psydon as sovereign of the waters. Enraged by ignorance of Him from followers of The Ten."
	flaws= "Reckless, Stubborn, Destructive"
	worshippers = "Sailors of the Sea and Sky, Horrid Sea-Creachers, Fog Islanders"
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

/datum/patron/divine/necra
	name = NECRA
	domain = "Mother Goddess of Death and Time"
	desc = "The Veiled Lady, once close partner to Psydon. She created the Nine others from his corpse, guiding them from the Underworld."
	flaws = "Unchanging, Apathetic, Easy to Bore"
	worshippers = "Orderlies, Gravetenders, Mourners"
	sins = "Heretical Magic, Untimely Death, Disturbance of Rest"
	boons = "You may see the presence of a soul in a body."
	added_traits = list(TRAIT_SOUL_EXAMINE)
	devotion_holder = /datum/devotion/divine/necra
	confess_lines = list(
		"ALL SOULS FIND THEIR WAY TO NECRA!",
		"THE UNDERMAIDEN IS OUR FINAL REPOSE!",
		"I FEAR NOT DEATH, MY LADY AWAITS ME!",
	)
	storyteller = /datum/storyteller/necra
	associated_psycross = /obj/item/clothing/neck/psycross/silver/divine/necra

/datum/patron/divine/ravox
	name = RAVOX
	domain = "God of Warfare, Justice, and Bravery"
	desc = "Crafted from the blade of Psydon, a champion of all who seek righteousness for themselves and others."
	flaws = "Carelessness, Aggression, Pride"
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
	associated_psycross = /obj/item/clothing/neck/psycross/silver/divine/ravox

/datum/patron/divine/iliope
	name = ILIOPE
	domain = "Deity of Trickery, Freedom, and Inspiration"
	desc = "Crafted from the silver tongue of Psydon. Iliope is a force of change and deceit, yet allows little known of their gender let alone presence."
	flaws = "Petulance, Deception, Gambling-Prone"
	worshippers = "Cheats, Performers, The Hopeless"
	sins = "Boredom, Predictability, Routine"
	boons = "You can rig different forms of gambling in your favor."
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
	domain = "Goddess of Disease, Alchemy, and Medicine"
	desc = "A mistake; Psydon's intestines left behind. She slithered out, bringing forth the cycle of life and decay."
	flaws = "Drunkenness, Crudeness, Irresponsibility"
	worshippers = "The Ill and Infirm, Alchemists, Physicians"
	sins = "´Curing´ Abnormalities, Refusing to Help Unfortunates, Groveling"
	boons = "You may consume rotten food without being sick."
	added_traits = list(TRAIT_ROT_EATER)
	devotion_holder = /datum/devotion/divine/erdl
	confess_lines = list(
		"ERDL SOOTHES ALL ILLS!",
		"DECAY IS A CONTINUATION OF LIFE!",
		"MY AFFLICTION IS MY TESTAMENT!",
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
	domain = "God of Toil, Innovation, and Creation"
	desc = "Crafted from the hands of Psydon. He would later use his own to construct wondrous inventions."
	flaws = "Obsessive, Exacting, Overbearing"
	worshippers = "Smiths, Miners, Sculptors"
	sins = "Cheating, Shoddy Work, Suicide"
	boons = "You recover more energy when sleeping."
	added_traits = list(TRAIT_BETTER_SLEEP)
	devotion_holder = /datum/devotion/divine/golerkanh
	confess_lines = list(
		"GOLERKANH IS MY FORGE!",
		"TRUE VALUE IS IN THE TOIL!",
		"I AM AN INSTRUMENT OF CREATION!",
	)
	storyteller = /datum/storyteller/golerkanh
	associated_psycross = /obj/item/clothing/neck/psycross/silver/divine/golerkanh

/datum/patron/divine/pomette
	name = POMETTE
	domain = "Goddess of Love, Family, and Art"
	desc = "Crafted from the heart of Psydon, a spreader of love and beauty, and strengthener of bonds."
	flaws= "Naivete, Impulsiveness, Bigotry"
	worshippers = "Mothers, Artists, Married Couples"
	sins = "Sadism, Abandonment, Ruining Beauty"
	boons = "You can understand others' needs better."
	added_traits = list(TRAIT_EXTEROCEPTION)
	devotion_holder = /datum/devotion/divine/pomette
	confess_lines = list(
		"POMETTE BRINGS US TOGETHER!",
		"HER BEAUTY IS EVEN IN THIS TORMENT!",
		"I LOVE YOU, EVEN AS YOU TRESPASS AGAINST ME!",
	)
	storyteller = /datum/storyteller/pomette
	associated_psycross = /obj/item/clothing/neck/psycross/silver/divine/pomette
