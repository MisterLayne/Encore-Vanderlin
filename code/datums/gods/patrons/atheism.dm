/datum/patron/godless
	name = null
	associated_faith = /datum/faith/godless
	profane_words = list()

/datum/patron/godless/can_pray(mob/living/follower)
	// Redefined this entire proc just to tell you:
	// Yes, the godless can pray. This is intentional.
	// Maybe they pray to themselves?
	return TRUE

/datum/patron/godless/hear_prayer(mob/living/follower, message)
	return FALSE

/datum/patron/godless/godless //lol lmao
	name = "Godless"
	domain = "Abandonment of the Gods"
	desc = "Worship of the Gods is foolish! Gods exist, but you refuse to worship them due to your own hubris."
	flaws = "Stubborn, unrelenting, misguided"
	worshippers = "Egomaniacs, heretics, the ignorant"
	sins = "Idolatry, worship, blind Faith"
	boons = "None, you godless heathen."

	confess_lines = list(
		"NO GODS, NO MASTERS! THERE IS ONLY ME!",
		"A MAN CHOOSES, A SLAVE OBEYS - I WILL BE FREE FROM THE GODS!",
		"THE OLD WAYS WILL CRUMBLE, THE GODS ARE UNJUST!"
	)

/datum/patron/godless/autotheist
	name = "Autotheist"
	domain = "Self-Deification"
	desc = "Forget the Divine Pantheon, YOU are a God! The mortals don't know it, but you walk alongside them in your shell. You are the true ruler of this world!"
	flaws = "Stubborn, pride, superiority"
	worshippers = "Egomaniacs, the self-obsessed, megalomaniacs"
	sins = "Humility, self-doubt, deference to another."
	boons = "None, you godless heathen."

	confess_lines = list(
		"I AM THE ONLY TRUE GOD!",
		"MY WILL IS THE ONLY LAW!",
		"WHAT IS A GOD BUT MYSELF!"
	)

/datum/patron/godless/defiant
	name = "Defiant"
	domain = "Rejection of Gods"
	desc = "You have a grave distaste for authority, so much so to the point where you decided that you refuse to worship the gods! They are merely another form of authority, and you will never bow down to them."
	flaws = "Defiant, rebellious, unrelenting."
	worshippers = "Anarchists, rebels, the listless." //fuck the system, og
	sins = "Obedience, submission"
	boons = "None, you godless heathen."

	confess_lines = list(
		"I WILL NEVER BOW TO ANYONE- NOT EVEN THE DIVINE!",
		"A MAN CHOOSES, A SLAVE OBEYS! I WILL BE FREE FROM THE GODS!",
		"NOBODY HOLDS AUTHORITY OVER ME, NOT EVEN THE GODS!"
	)

/datum/patron/godless/dystheist
	name = "Dystheist"
	domain = "Rejection of Gods"
	desc = "You see the Gods for what they truly are: powerful, yet flawed, and unworthy of worship."
	flaws = "Cynical, judgmental, holier-than-thou."
	worshippers = "Skeptics, the disillusioned."
	sins = "Blind faith."
	boons = "None, you godless heathen."

	confess_lines = list(
		"THE GODS MEAN NOTHING TO ME!",
		"THE ELEMENTALS ARE FLAWED!",
		"I WILL NEVER BOW DOWN TO ANY OF THOSE TYRANTS, DIVINE NOR INFERNAL!"
	)

/datum/patron/godless/naivety
	name = "Naivety"
	domain = "Indifference"
	desc = "Either due to never being informed, a memory issue, or perhaps a brain injury, you have no clue what Gods are!"
	flaws = "Ignorant, naive, stupid."
	worshippers = "Younglings, the ignorant, fools, and the addled."
	sins = "...What's that?"
	boons = "...What is that?"
	confess_lines = list(
		"I DON'T KNOW WHAT YOU'RE TALKING ABOUT!",
		"WHAT'S A GOD?!",
		"NOBODY EVER TOLD ME ABOUT THE DIVINE!"
	)
