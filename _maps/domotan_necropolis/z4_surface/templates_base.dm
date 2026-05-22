//The highest level of the Necropolis
//This is basically just ground level of Mount Miracle at this point
#define NECROPOLIS_Z4_TEMPLATES list("z4_respite_camp")

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
	rarity = 1
