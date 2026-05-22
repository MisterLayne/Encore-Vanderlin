SUBSYSTEM_DEF(dungeon_corridor_mapping)
	name = "Dungeon Corridor Mapping"
	init_order = INIT_ORDER_DUNGEON_CORRIDOR_MAPPING
	flags = SS_NO_FIRE

/datum/controller/subsystem/dungeon_corridor_mapping/Initialize(timeofday)
	SSmapping.load_marks()

	return ..()
