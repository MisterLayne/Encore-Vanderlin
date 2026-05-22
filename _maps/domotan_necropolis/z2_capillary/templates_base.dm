//The second lowest level of the Necropolis
//Generic spawns do not spawn this far down
#define NECROPOLIS_Z2_TEMPLATES list("z2_respite_camp")

/obj/effect/landmark/map_load_mark/necropolis/z2
	name = "Necropolis Z2 Template Spawner"
	templates = NECROPOLIS_Z2_TEMPLATES

// Respite camp
// same on every level, exactly what it sounds like
// These only really vary by area type and loot spawn
/datum/map_template/dungeon/z2_respite_camp
	name = "Z2RespiteCamp"
	id = "z2_respite_camp"
	mappath = "_maps/domotan_necropolis/z2_capillary/z2_respite_camp.dmm"
	rarity = 1
