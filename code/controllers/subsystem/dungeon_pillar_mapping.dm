SUBSYSTEM_DEF(minor_mapping)
	name = "Dungeon Pillar Mapping"
	init_order = INIT_ORDER_DUNGEON_PILLAR_MAPPING
	flags = SS_NO_FIRE

/datum/controller/subsystem/dungeon_pillar_mapping/Initialize(timeofday)
	SSmapping.load_marks()

	return ..()
