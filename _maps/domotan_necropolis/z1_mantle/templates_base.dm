//The lowest level of the Necropolis
//Generic spawns do not spawn this far down
#define NECROPOLIS_Z1_TEMPLATES list("z1_respite_camp")

/obj/effect/landmark/map_load_mark/necropolis/z1
	name = "Necropolis Z1 Template Spawner"
	templates = NECROPOLIS_Z1_TEMPLATES

// Respite camp
// same on every level, exactly what it sounds like
// These only really vary by area type and loot spawn
/datum/map_template/dungeon/z1_respite_camp
	name = "Z1RespiteCamp"
	id = "z1_respite_camp"
	mappath = "_maps/domotan_necropolis/z1_mantle/z1_respite_camp.dmm"
	rarity = 1
