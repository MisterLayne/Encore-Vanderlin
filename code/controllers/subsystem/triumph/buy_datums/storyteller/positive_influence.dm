/datum/triumph_buy/storyteller_influence_bonus
	name = "Storyteller Influence Bonus"
	desc = "Buy an extra 25 influence for this god!"
	triumph_cost = 2
	category = TRIUMPH_CAT_STORYTELLER
	visible_on_active_menu = TRUE
	limited = TRUE
	stock = 2
	/// The name of the storyteller we are giving bonus influence to
	var/storyteller_name

/datum/triumph_buy/storyteller_influence_bonus/on_activate()
	. = ..()
	if(storyteller_name)
		adjust_storyteller_influence(storyteller_name, 25)

/datum/triumph_buy/storyteller_influence_bonus/deceivers
	name = "Deceivers' Influence"
	triumph_buy_id = TRIUMPH_BUY_DECEIVERS_INFLUENCE
	storyteller_name = DECEIVERS

/datum/triumph_buy/storyteller_influence_bonus/archdevils
	name = "Archdevil's Influence"
	triumph_buy_id = TRIUMPH_BUY_ARCHDEVILS_INFLUENCE
	storyteller_name = ARCHDEVILS

/datum/triumph_buy/storyteller_influence_bonus/hertannea
	name = "Hertannea's Influence"
	triumph_buy_id = TRIUMPH_BUY_HERTANNEA_INFLUENCE
	storyteller_name = HERTANNEA

/datum/triumph_buy/storyteller_influence_bonus/envy
	name = "One Envy's Influence"
	triumph_buy_id = TRIUMPH_BUY_ENVY_INFLUENCE
	storyteller_name = ENVY

/datum/triumph_buy/storyteller_influence_bonus/gani
	name = "Gani's Influence"
	triumph_buy_id = TRIUMPH_BUY_GANI_INFLUENCE
	storyteller_name = GANI

/datum/triumph_buy/storyteller_influence_bonus/pomette
	name = "Pomette's Influence"
	triumph_buy_id = TRIUMPH_BUY_POMETTE_INFLUENCE
	storyteller_name = POMETTE

/datum/triumph_buy/storyteller_influence_bonus/golerkanh
	name = "Goler Kanh's Influence"
	triumph_buy_id = TRIUMPH_BUY_GOLERKANH_INFLUENCE
	storyteller_name = GOLERKANH

/datum/triumph_buy/storyteller_influence_bonus/erdl
	name = "Erdl's Influence"
	triumph_buy_id = TRIUMPH_BUY_ERDL_INFLUENCE
	storyteller_name = ERDL

/datum/triumph_buy/storyteller_influence_bonus/valdala
	name = "Valdala's Influence"
	triumph_buy_id = TRIUMPH_BUY_VALDALA_INFLUENCE
	storyteller_name = VALDALA

/datum/triumph_buy/storyteller_influence_bonus/iliope
	name = "Iliope's Influence"
	triumph_buy_id = TRIUMPH_BUY_ILIOPE_INFLUENCE
	storyteller_name = ILIOPE

/datum/triumph_buy/storyteller_influence_bonus/mjallidhorn
	name = "Mjallidhorn's Influence"
	triumph_buy_id = TRIUMPH_BUY_MJALLIDHORN_INFLUENCE
	storyteller_name = MJALLIDHORN

/datum/triumph_buy/storyteller_influence_bonus/mordsol
	name = "Mordsol's Influence"
	triumph_buy_id = TRIUMPH_BUY_MORDSOL_INFLUENCE
	storyteller_name = MORDSOL

/datum/triumph_buy/storyteller_influence_bonus/akan
	name = "Akan's Influence"
	triumph_buy_id = TRIUMPH_BUY_NOC_INFLUENCE
	storyteller_name = AKAN

/datum/triumph_buy/storyteller_influence_bonus/visires
	name = "Visires' Influence"
	triumph_buy_id = TRIUMPH_BUY_VISIRES_INFLUENCE
	storyteller_name = VISIRES
