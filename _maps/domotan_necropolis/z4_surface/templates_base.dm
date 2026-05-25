//The highest level of the Necropolis
//This is basically just ground level of Mount Miracle at this point
#define NECROPOLIS_Z4_TEMPLATES list("z4_cave_1", "z4_cave_2", "z4_cave_3", "z4_cave_4", "z4_cave_5", "z4_cave_6", "z4_cells", "z4_forest", "z4_graveyard", "z4_hedgemaze", "z4_inn_necropolis", "z4_oasis_1", "z4_oasis_2", "z4_one_goblin", "z4_outpost", "z4_spidercave", "z4_washout", "z4_respite_camp")

/obj/effect/landmark/map_load_mark/necropolis/z4
	name = "Necropolis Z4 Template Spawner"
	templates = NECROPOLIS_Z4_TEMPLATES

// Respite camp
// same on every level, exactly what it sounds like
// These only really vary by area type and loot spawn
/datum/map_template/dungeon/z4_respite_camp
	name = "Z4RespiteCamp"
	id = "z4_respite_camp"
	mappath = "_maps/domotan_necropolis/z4_surface/z4_respite_camp.dmm"

//start of actual templates
/datum/map_template/dungeon/z4_cave_1
	name = "Z4Cave1"
	id = "z4_cave_1"
	mappath = "_maps/domotan_necropolis/z4_surface/cave_1.dmm"

/datum/map_template/dungeon/z4_cave_2
	name = "Z4Cave2"
	id = "z4_cave_2"
	mappath = "_maps/domotan_necropolis/z4_surface/cave_2.dmm"

/datum/map_template/dungeon/z4_cave_3
	name = "Z4Cave3"
	id = "z4_cave_3"
	mappath = "_maps/domotan_necropolis/z4_surface/cave_3.dmm"

/datum/map_template/dungeon/z4_cave_4
	name = "Z4Cave4"
	id = "z4_cave_4"
	mappath = "_maps/domotan_necropolis/z4_surface/cave_4.dmm"

/datum/map_template/dungeon/z4_cave_5
	name = "Z4Cave5"
	id = "z4_cave_5"
	mappath = "_maps/domotan_necropolis/z4_surface/cave_5.dmm"

/datum/map_template/dungeon/z4_cave_6
	name = "Z4Cave6"
	id = "z4_cave_6"
	mappath = "_maps/domotan_necropolis/z4_surface/cave_6.dmm"

/datum/map_template/dungeon/z4_cells
	name = "Z4Cells"
	id = "z4_cells"
	mappath = "_maps/domotan_necropolis/z4_surface/cells.dmm"

/datum/map_template/dungeon/z4_forest
	name = "Z4Forest"
	id = "z4_forest"
	mappath = "_maps/domotan_necropolis/z4_surface/forest.dmm"

/datum/map_template/dungeon/z4_graveyard
	name = "Z4Graveyard"
	id = "z4_graveyard"
	mappath = "_maps/domotan_necropolis/z4_surface/graveyard.dmm"

/datum/map_template/dungeon/z4_hedgemaze
	name = "Z4Hedgemaze"
	id = "z4_hedgemaze"
	mappath = "_maps/domotan_necropolis/z4_surface/hedgemaze.dmm"

/datum/map_template/dungeon/z4_inn_necropolis
	name = "Z4InnNecropolis"
	id = "z4_inn_necropolis"
	mappath = "_maps/domotan_necropolis/z4_surface/Inn_necropolis.dmm"

/datum/map_template/dungeon/z4_oasis_1
	name = "Z4Oasis1"
	id = "z4_oasis_1"
	mappath = "_maps/domotan_necropolis/z4_surface/oasis_1.dmm"

/datum/map_template/dungeon/z4_oasis_2
	name = "Z4Oasis2"
	id = "z4_oasis_2"
	mappath = "_maps/domotan_necropolis/z4_surface/oasis_2.dmm"

/datum/map_template/dungeon/z4_one_goblin
	name = "Z4OneGoblin"
	id = "z4_one_goblin"
	mappath = "_maps/domotan_necropolis/z4_surface/one_goblin.dmm"

/datum/map_template/dungeon/z4_outpost
	name = "Z4Outpost"
	id = "z4_outpost"
	mappath = "_maps/domotan_necropolis/z4_surface/outpost.dmm"

/datum/map_template/dungeon/z4_spidercave
	name = "Z4Spidercave"
	id = "z4_spidercave"
	mappath = "_maps/domotan_necropolis/z4_surface/spidercave.dmm"

/datum/map_template/dungeon/z4_washout
	name = "Z4Washout"
	id = "z4_washout"
	mappath = "_maps/domotan_necropolis/z4_surface/washout.dmm"
