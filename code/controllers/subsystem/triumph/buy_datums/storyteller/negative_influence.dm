/datum/triumph_buy/storyteller_influence_reduction
	name = "Storyteller Influence Reduction"
	desc = "Reduce the influence of this god by 25!"
	triumph_cost = 2
	category = TRIUMPH_CAT_STORYTELLER
	visible_on_active_menu = TRUE
	limited = TRUE
	stock = 2
	/// The name of the storyteller we are reducing influence for
	var/storyteller_name

/datum/triumph_buy/storyteller_influence_reduction/on_activate()
	. = ..()
	if(storyteller_name)
		adjust_storyteller_influence(storyteller_name, -25)

/datum/triumph_buy/storyteller_influence_reduction/matthios
	name = "Deceivers' Influence Reduction"
	triumph_buy_id = TRIUMPH_BUY_MATTHIOS_INFLUENCE_REDUCTION
	storyteller_name = MATTHIOS

/datum/triumph_buy/storyteller_influence_reduction/archdevils
	name = "Archdevil's Influence Reduction"
	triumph_buy_id = TRIUMPH_BUY_ARCHDEVILS_INFLUENCE_REDUCTION
	storyteller_name = ARCHDEVILS

/datum/triumph_buy/storyteller_influence_reduction/hertannea
	name = "Hertannea's Influence Reduction"
	triumph_buy_id = TRIUMPH_BUY_HERTANNEA_INFLUENCE_REDUCTION
	storyteller_name = HERTANNEA

/datum/triumph_buy/storyteller_influence_reduction/zizo
	name = "One Envy's Influence Reduction"
	triumph_buy_id = TRIUMPH_BUY_ZIZO_INFLUENCE_REDUCTION
	storyteller_name = ZIZO

/datum/triumph_buy/storyteller_influence_reduction/gani
	name = "Gani's Influence Reduction"
	triumph_buy_id = TRIUMPH_BUY_GANI_INFLUENCE_REDUCTION
	storyteller_name = GANI

/datum/triumph_buy/storyteller_influence_reduction/pomette
	name = "Pomette's Influence Reduction"
	triumph_buy_id = TRIUMPH_BUY_POMETTE_INFLUENCE_REDUCTION
	storyteller_name = POMETTE

/datum/triumph_buy/storyteller_influence_reduction/golerkanh
	name = "Goler Kanh's Influence Reduction"
	triumph_buy_id = TRIUMPH_BUY_GOLERKANH_INFLUENCE_REDUCTION
	storyteller_name = GOLERKANH

/datum/triumph_buy/storyteller_influence_reduction/erdl
	name = "Erdl's Influence Reduction"
	triumph_buy_id = TRIUMPH_BUY_ERDL_INFLUENCE_REDUCTION
	storyteller_name = ERDL

/datum/triumph_buy/storyteller_influence_reduction/valdala
	name = "Valdala's Influence Reduction"
	triumph_buy_id = TRIUMPH_BUY_VALDALA_INFLUENCE_REDUCTION
	storyteller_name = VALDALA

/datum/triumph_buy/storyteller_influence_reduction/iliope
	name = "Iliope's Influence Reduction"
	triumph_buy_id = TRIUMPH_BUY_ILIOPE_INFLUENCE_REDUCTION
	storyteller_name = ILIOPE

/datum/triumph_buy/storyteller_influence_reduction/mjallidhorn
	name = "Mjallidhorn's Influence Reduction"
	triumph_buy_id = TRIUMPH_BUY_MJALLIDHORN_INFLUENCE_REDUCTION
	storyteller_name = MJALLIDHORN

/datum/triumph_buy/storyteller_influence_reduction/mordsol
	name = "Mordsol's Influence Reduction"
	triumph_buy_id = TRIUMPH_BUY_MORDSOL_INFLUENCE_REDUCTION
	storyteller_name = MORDSOL

/datum/triumph_buy/storyteller_influence_reduction/akan
	name = "Akan's Influence Reduction"
	triumph_buy_id = TRIUMPH_BUY_NOC_INFLUENCE_REDUCTION
	storyteller_name = AKAN

/datum/triumph_buy/storyteller_influence_reduction/visires
	name = "Visires' Influence Reduction"
	triumph_buy_id = TRIUMPH_BUY_VISIRES_INFLUENCE_REDUCTION
	storyteller_name = VISIRES
