/datum/blueprint_recipe/archdevils
	craftdiff = 0
	category = "Structure"
	requires_learning = TRUE

/datum/blueprint_recipe/archdevils/shrine
	name = "Profane Shrine"
	required_materials = list(
		/obj/item/grown/log/tree/small = 1,
		/obj/item/natural/stone = 2,
		/obj/item/grown/log/tree/stake = 3
	)
	result_type = /obj/structure/fluff/psycross/archdevil_cross
	craftdiff = 1
	verbage = "construct"
	verbage_tp = "constructs"
	craftsound = 'sound/foley/Building-01.ogg'
