/datum/blueprint_recipe/gani
	craftdiff = 0
	category = "Gani Shrine"
	requires_learning = TRUE
	construct_tool = null

/datum/blueprint_recipe/gani/shrine
	name = "growing shrine to Gani (unique)"
	required_materials = list(/obj/item/grown/log/tree/small = 1,
				/obj/item/natural/thorn = 3,
				/obj/item/natural/head/gote = 1)
	result_type = /obj/structure/fluff/psycross/crafted/shrine/gani_gote
	verbage = "consecrate"
	verbage_tp = "consecrates"
	craftsound = 'sound/foley/Building-01.ogg'

/datum/blueprint_recipe/gani/shrine/saiga
	name = "stinging shrine to Gani (unique)"
	required_materials = list(/obj/item/grown/log/tree/small = 1,
				/obj/item/natural/thorn = 3,
				/obj/item/natural/head/saiga = 1)
	result_type = /obj/structure/fluff/psycross/crafted/shrine/gani_saiga

/datum/blueprint_recipe/gani/shrine/volf
	name = "devouring shrine to Gani (unique)"
	required_materials = list(/obj/item/grown/log/tree/small = 1,
				/obj/item/natural/thorn = 3,
				/obj/item/natural/head/volf = 1)
	result_type = /obj/structure/fluff/psycross/crafted/shrine/gani_volf

/datum/blueprint_recipe/gani/shrine/troll
	name = "lording shrine to Gani (unique)"
	required_materials = list(/obj/item/grown/log/tree/small = 1,
				/obj/item/natural/thorn = 3,
				/obj/item/natural/head/troll = 1)
	result_type = /obj/structure/fluff/psycross/crafted/shrine/gani_troll
