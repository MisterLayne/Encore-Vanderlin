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

/datum/triumph_buy/storyteller_influence_bonus/matthios
	name = "Deceivers' Influence"
	triumph_buy_id = TRIUMPH_BUY_MATTHIOS_INFLUENCE
	storyteller_name = MATTHIOS

/datum/triumph_buy/storyteller_influence_bonus/graggar
	name = "Archdevil's Influence"
	triumph_buy_id = TRIUMPH_BUY_GRAGGAR_INFLUENCE
	storyteller_name = GRAGGAR

/datum/triumph_buy/storyteller_influence_bonus/baotha
	name = "Hertannea's Influence"
	triumph_buy_id = TRIUMPH_BUY_BAOTHA_INFLUENCE
	storyteller_name = BAOTHA

/datum/triumph_buy/storyteller_influence_bonus/zizo
	name = "One Envy's Influence"
	triumph_buy_id = TRIUMPH_BUY_ZIZO_INFLUENCE
	storyteller_name = ZIZO

/datum/triumph_buy/storyteller_influence_bonus/gani
	name = "Gani's Influence"
	triumph_buy_id = TRIUMPH_BUY_GANI_INFLUENCE
	storyteller_name = GANI

/datum/triumph_buy/storyteller_influence_bonus/pomette
	name = "Pomette's Influence"
	triumph_buy_id = TRIUMPH_BUY_POMETTE_INFLUENCE
	storyteller_name = POMETTE

/datum/triumph_buy/storyteller_influence_bonus/malum
	name = "Goler Kanh's Influence"
	triumph_buy_id = TRIUMPH_BUY_MALUM_INFLUENCE
	storyteller_name = MALUM

/datum/triumph_buy/storyteller_influence_bonus/erdl
	name = "Erdl's Influence"
	triumph_buy_id = TRIUMPH_BUY_ERDL_INFLUENCE
	storyteller_name = ERDL

/datum/triumph_buy/storyteller_influence_bonus/necra
	name = "Valdala's Influence"
	triumph_buy_id = TRIUMPH_BUY_NECRA_INFLUENCE
	storyteller_name = NECRA

/datum/triumph_buy/storyteller_influence_bonus/iliope
	name = "Iliope's Influence"
	triumph_buy_id = TRIUMPH_BUY_ILIOPE_INFLUENCE
	storyteller_name = ILIOPE

/datum/triumph_buy/storyteller_influence_bonus/mjallidhorn
	name = "Mjallidhorn's Influence"
	triumph_buy_id = TRIUMPH_BUY_MJALLIDHORN_INFLUENCE
	storyteller_name = MJALLIDHORN

/datum/triumph_buy/storyteller_influence_bonus/ravox
	name = "Mordsol's Influence"
	triumph_buy_id = TRIUMPH_BUY_RAVOX_INFLUENCE
	storyteller_name = RAVOX

/datum/triumph_buy/storyteller_influence_bonus/akan
	name = "Akan's Influence"
	triumph_buy_id = TRIUMPH_BUY_NOC_INFLUENCE
	storyteller_name = AKAN

/datum/triumph_buy/storyteller_influence_bonus/visires
	name = "Visires' Influence"
	triumph_buy_id = TRIUMPH_BUY_VISIRES_INFLUENCE
	storyteller_name = VISIRES
