/datum/devotion/divine/centrist
	traits = list(TRAIT_DIVINE_SERVANT)

/datum/devotion/divine/make_gmtemplar()
	. = ..()
	miracles = list(
		CLERIC_T0 = /datum/action/cooldown/spell/healing,
		CLERIC_T1 = /datum/action/cooldown/spell/avert/templar,
		CLERIC_T2 = /datum/action/cooldown/spell/enchantment/holy_flame,
		CLERIC_T3 = /datum/action/cooldown/spell/status/divine_shield,
	)
	viable_tasks = list(
		/datum/devotion_task/visires_purge,
	)

/datum/devotion/divine/visires
	miracles = list(
		CLERIC_T0 = /datum/action/cooldown/spell/healing,
		CLERIC_T1 = /datum/action/cooldown/spell/sacred_flame,
		CLERIC_T2 = /datum/action/cooldown/spell/healing/greater,
		CLERIC_T3 = /datum/action/cooldown/spell/revive,
	)
	viable_tasks = list(
		/datum/devotion_task/visires_purge,
	)
	traits = list(TRAIT_DIVINE_SERVANT)

/datum/devotion/divine/akan
	miracles = list(
		CLERIC_T0 = /datum/action/cooldown/spell/healing,
		CLERIC_T1 = /datum/action/cooldown/spell/status/invisibility,
		CLERIC_T2 = /datum/action/cooldown/spell/blindness/miracle,
		CLERIC_T3 = /datum/action/cooldown/spell/projectile/moonlit_dagger,
	)
	viable_tasks = list(
		/datum/devotion_task/noc_teach,
		/datum/devotion_task/noc_write,
		/datum/devotion_task/noc_read,
	)
	traits = list(TRAIT_DIVINE_SERVANT)

/datum/devotion/divine/gani
	miracles = list(
		CLERIC_T0 = /datum/action/cooldown/spell/healing,
		CLERIC_T1 = /datum/action/cooldown/spell/undirected/bless_crops,
		CLERIC_T2 = /datum/action/cooldown/spell/undirected/beast_sense,
		CLERIC_T3 = /datum/action/cooldown/spell/beast_tame,

	)
	viable_tasks = list(
		/datum/devotion_task/gani_tend,
		/datum/devotion_task/gani_harvest,
		/datum/devotion_task/gani_bless,
	)
	traits = list(TRAIT_DIVINE_SERVANT)

/datum/devotion/divine/mjallidhorn
	miracles = list(
		CLERIC_T0 = list(/datum/action/cooldown/spell/healing, /datum/action/cooldown/spell/undirected/conjure_item/summon_leech),
		CLERIC_T1 = /datum/action/cooldown/spell/projectile/swordfish,
		CLERIC_T2 = /datum/action/cooldown/spell/undirected/conjure_item/summon_trident/miracle,
		CLERIC_T3 = /datum/action/cooldown/spell/ocean_embrace,
	)
	viable_tasks = list(
		/datum/devotion_task/mjallidhorn_sail,
		/datum/devotion_task/mjallidhorn_fish,
	)
	traits = list(TRAIT_DIVINE_SERVANT)

/datum/devotion/divine/valdala
	miracles = list(
		CLERIC_T0 = list(/datum/action/cooldown/spell/healing, /datum/action/cooldown/spell/avert),
		CLERIC_T1 = /datum/action/cooldown/spell/burial_rites,
		CLERIC_T2 = list(/datum/action/cooldown/spell/undirected/locate_dead, /datum/action/cooldown/spell/aoe/abrogation, /datum/action/cooldown/spell/undirected/soul_speak, ),
		CLERIC_T3 = /datum/action/cooldown/spell/aoe/churn_undead,
	)
	viable_tasks = list(
		/datum/devotion_task/valdala_bury,
		/datum/devotion_task/visires_purge,
	)
	traits = list(TRAIT_DIVINE_SERVANT, TRAIT_DEATHSIGHT)

/datum/devotion/divine/mordsol
	miracles = list(
		CLERIC_T0 = /datum/action/cooldown/spell/healing,
		CLERIC_T1 = /datum/action/cooldown/spell/undirected/call_to_arms,
		CLERIC_T2 = /datum/action/cooldown/spell/undirected/divine_strike,
		CLERIC_T3 = /datum/action/cooldown/spell/persistence,
	)
	traits = list(TRAIT_DIVINE_SERVANT)

/datum/devotion/divine/iliope
	miracles = list(
		CLERIC_T0 = /datum/action/cooldown/spell/healing,
		CLERIC_T1 = /datum/action/cooldown/spell/undirected/list_target/vicious_mimicry,
		CLERIC_T2 = /datum/action/cooldown/spell/status/wheel,
		CLERIC_T3 = /datum/action/cooldown/spell/undirected/jaunt/illusory_prop,
	)
	viable_tasks = list(
		/datum/devotion_task/iliope_gamble,
		/datum/devotion_task/iliope_trick,
	)
	traits = list(TRAIT_DIVINE_SERVANT)

/datum/devotion/divine/erdl
	miracles = list(
		CLERIC_T0 = list(/datum/action/cooldown/spell/healing, /datum/action/cooldown/spell/undirected/conjure_item/summon_leech/erdl),
		CLERIC_T1 = /datum/action/cooldown/spell/diagnose/holy,
		CLERIC_T2 = /datum/action/cooldown/spell/attach_bodypart,
		CLERIC_T3 = /datum/action/cooldown/spell/cure_rot,
	)
	viable_tasks = list(
		/datum/devotion_task/erdl_heal,
		/datum/devotion_task/erdl_medicine,
	)
	traits = list(TRAIT_DIVINE_SERVANT)

/datum/devotion/divine/golerkanh
	miracles = list(
		CLERIC_T0 = /datum/action/cooldown/spell/healing,
		CLERIC_T1 = /datum/action/cooldown/spell/status/vigorous_craft,
		CLERIC_T2 = /datum/action/cooldown/spell/hammer_fall,
		CLERIC_T3 = /datum/action/cooldown/spell/heat_metal,
	)
	viable_tasks = list(
		/datum/devotion_task/golerkanh_craft,
		/datum/devotion_task/golerkanh_smelt,
		/datum/devotion_task/golerkanh_forge,
	)
	traits = list(TRAIT_DIVINE_SERVANT)

/datum/devotion/divine/pomette
	miracles = list(
		CLERIC_T0 = /datum/action/cooldown/spell/healing,
		CLERIC_T1 = /datum/action/cooldown/spell/instill_perfection,
		CLERIC_T2 = /datum/action/cooldown/spell/projectile/pomette_curse,
		CLERIC_T3 = /datum/action/cooldown/spell/pomettic_bloom,
	)
	favored_species = list(SPEC_ID_HARPY)
	favored_miracles = list(
		CLERIC_T3 = /datum/action/cooldown/spell/charm/pomettic
	)
	viable_tasks = list(
		/datum/devotion_task/pomette_create,
		/datum/devotion_task/pomette_hug,
	)
	traits = list(TRAIT_DIVINE_SERVANT)

// Inhumen
/datum/devotion/inhumen/make_cleric()
	. = ..()
	miracles_extra += list(
		/datum/action/cooldown/spell/healing/profane,
	)

/datum/devotion/inhumen/make_templar()
	. = ..()
	miracles_extra += list(
		/datum/action/cooldown/spell/healing/profane,
	)

/datum/devotion/inhumen/make_churchling()
	. = ..()
	miracles_extra += list(
		/datum/action/cooldown/spell/healing/profane,
	)

/datum/devotion/inhumen/make_acolyte()
	. = ..()
	miracles_extra += list(
		/datum/action/cooldown/spell/healing/profane,
	)

/datum/devotion/inhumen/zizo
	miracles = list(
		CLERIC_T0 = list(/datum/action/cooldown/spell/undirected/touch/orison, /datum/action/cooldown/spell/aoe/snuff),
		CLERIC_T1 = /datum/action/cooldown/spell/projectile/profane,
		CLERIC_T2 = /datum/action/cooldown/spell/conjure/raise_lesser_undead,
		CLERIC_T3 = /datum/action/cooldown/spell/undirected/rituos,
	)
	traits = list(TRAIT_DEATHSIGHT)

/datum/devotion/inhumen/archdevils
	miracles = list(
		CLERIC_T0 = /datum/action/cooldown/spell/undirected/call_to_slaughter,
		CLERIC_T1 = /datum/action/cooldown/spell/projectile/blood_net,
		CLERIC_T2 = /datum/action/cooldown/spell/projectile/revel_in_slaughter,
		CLERIC_T3 = /datum/action/cooldown/spell/undirected/bloodrage.
	)
	viable_tasks = list(
		/datum/devotion_task/archdevils_consume,
	)

/datum/devotion/inhumen/deceivers
	miracles = list(
		CLERIC_T0 = /datum/action/cooldown/spell/appraise/holy,
		CLERIC_T1 = /datum/action/cooldown/spell/transact,
		CLERIC_T2 = /datum/action/cooldown/spell/beam/equalize,
		CLERIC_T3 = /datum/action/cooldown/spell/churn_wealthy,
	)
	viable_tasks = list(
		/datum/devotion_task/deceivers_steal,
	)

/datum/devotion/inhumen/hertannea
	miracles = list(
		CLERIC_T0 = /datum/action/cooldown/spell/find_flaw,
		CLERIC_T1 = /datum/action/cooldown/spell/hertanneablessings,
		CLERIC_T2 = /datum/action/cooldown/spell/projectile/blowingdust,
		CLERIC_T3 = /datum/action/cooldown/spell/painkiller,
	)
	viable_tasks = list(
		/datum/devotion_task/hertannea_indulge,
	)

// Alternate faiths

/datum/devotion/alternate/great_hunt
	miracles = list(
		CLERIC_T0 = /datum/action/cooldown/spell/healing/hunt,
		CLERIC_T1 = list(/datum/action/cooldown/spell/conjure/hunters_trick, /datum/action/cooldown/spell/undirected/hunters_grace),
		CLERIC_T2 = list(/datum/action/cooldown/spell/undirected/call_to_hunt, /datum/action/cooldown/spell/conjure/will_of_woods)
	)
	traits = list(TRAIT_BRUSHWALK)
