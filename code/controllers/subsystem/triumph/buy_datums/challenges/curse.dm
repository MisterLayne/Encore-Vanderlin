/datum/triumph_buy/random_curse
	name = "Random Curse"
	desc = "Become cursed by a random deity different from your patron. Curse effects vary from deity to deity."
	triumph_buy_id = TRIUMPH_BUY_CURSE
	triumph_cost = 0
	category = TRIUMPH_CAT_CHALLENGES
	visible_on_active_menu = TRUE
	manual_activation = TRUE
	var/list/patron_curse_map = list(
		/datum/patron/divine/visires = /datum/curse/visires,
		/datum/patron/divine/mordsol = /datum/curse/mordsol,
		/datum/patron/divine/valdala = /datum/curse/valdala,
		/datum/patron/divine/iliope = /datum/curse/iliope,
		/datum/patron/divine/erdl = /datum/curse/erdl,
		/datum/patron/divine/pomette = /datum/curse/pomette,
		/datum/patron/inhumen/zizo = /datum/curse/zizo/minor,
		/datum/patron/inhumen/matthios = /datum/curse/matthios,
		/datum/patron/inhumen/hertannea = /datum/curse/hertannea,
		/datum/patron/inhumen/archdevils_zizo = /datum/curse/zizo/minor,
	)

/datum/triumph_buy/random_curse/on_after_spawn(mob/living/carbon/human/H)
	. = ..()

	var/list/available_curses = (TEN_CURSES + INHUMEN_CURSES) - list(/datum/curse/akan, /datum/curse/archdevils, /datum/curse/zizo)

	if(H.patron && patron_curse_map[H.patron.type])
		var/datum/curse/patron_curse = patron_curse_map[H.patron.type]
		available_curses -= patron_curse

	if(!length(available_curses))
		return

	var/selected_curse_type = pick(available_curses)
	H.add_curse(selected_curse_type)

	on_activate()
