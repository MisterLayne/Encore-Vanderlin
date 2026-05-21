//The highest level of the Necropolis
//the safest part, if you could call any part safe
#define NECROPOLIS_Z3_TEMPLATES list("z3_respite_camp", "z3_corridor_base")
#define NECROPOLIS_Z3_CORRIDORS list("z3_corridor_1", "z3_corridor_2", "z3_corridor_3", "z3_corridor_4")
#define NECROPOLIS_Z3_PILLARS list("z3_pillar_1", "z3_pillar_2", "z3_pillar_3", "z3_pillar_4")

/obj/effect/landmark/map_load_mark/necropolis/z3
	name = "Necropolis Z3 Template Spawner"
	templates = NECROPOLIS_Z3_TEMPLATES

/obj/effect/landmark/map_load_mark/necropolis/z3_corridors
	name = "Necropolis Z3 Corridor Spawner"
	templates = NECROPOLIS_Z3_CORRIDORS

/obj/effect/landmark/map_load_mark/necropolis/z3_pillars
	name = "Necropolis Z3 Pillar Spawner"
	templates = NECROPOLIS_Z3_PILLARS

// Respite camp
// same on every level, exactly what it sounds like
// These only really vary by area type and loot spawn
/datum/map_template/dungeon/z3_respite_camp
	name = "Z3RespiteCamp"
	id = "z3_respite_camp"
	mappath = "_maps/domotan_necropolis/z3_dermus/z3_respite_camp.dmm"
	rarity = 1

//base 25 tile size corridor
//Separated into 4 quarters
//This is the generic hall tileset
/datum/map_template/dungeon/z3_corridor_base
	name = "Z3CorridorBase"
	id = "z3_corridor_base"
	mappath = "_maps/domotan_necropolis/z3_dermus/corridor/corridor_base.dmm"
	rarity = 200
	type_weight = 50

//corridor quarters are 12 tile size here
/datum/map_template/dungeon/z3_corridor_1
	name = "Z3Corridor1"
	id = "z3_corridor_1"
	mappath = "_maps/domotan_necropolis/z3_dermus/corridor/corridor_1.dmm"

/datum/map_template/dungeon/z3_corridor_2
	name = "Z3Corridor2"
	id = "z3_corridor_2"
	mappath = "_maps/domotan_necropolis/z3_dermus/corridor/corridor_2.dmm"

/datum/map_template/dungeon/z3_corridor_3
	name = "Z3Corridor3"
	id = "z3_corridor_3"
	mappath = "_maps/domotan_necropolis/z3_dermus/corridor/corridor_3.dmm"

/datum/map_template/dungeon/z3_corridor_4
	name = "Z3Corridor4"
	id = "z3_corridor_4"
	mappath = "_maps/domotan_necropolis/z3_dermus/corridor/corridor_4.dmm"

//small four tile size structures inside of the quarter pieces
//exists purely to break up monotonous procedural generation
/datum/map_template/dungeon/z3_pillar_1
	name = "Z3Pillar1"
	id = "z3_pillar_1"
	mappath = "_maps/domotan_necropolis/z3_dermus/corridor/pillar_1.dmm"
	rarity = 3

/datum/map_template/dungeon/z3_pillar_2
	name = "Z3Pillar2"
	id = "z3_pillar_2"
	mappath = "_maps/domotan_necropolis/z3_dermus/corridor/pillar_2.dmm"
	rarity = 3

/datum/map_template/dungeon/z3_pillar_3
	name = "Z3Pillar3"
	id = "z3_pillar_3"
	mappath = "_maps/domotan_necropolis/z3_dermus/corridor/pillar_3.dmm"
	rarity = 3

/datum/map_template/dungeon/z3_pillar_4
	name = "Z3Pillar4"
	id = "z3_pillar_4"
	mappath = "_maps/domotan_necropolis/z3_dermus/corridor/pillar_4.dmm"
	rarity = 3
