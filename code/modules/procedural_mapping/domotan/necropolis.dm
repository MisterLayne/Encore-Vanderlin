/obj/effect/landmark/mapGenerator/domotan/necropolis_z3
	mapGeneratorType = /datum/mapGenerator/necropolis_z3
	endTurfX = 255
	endTurfY = 255
	startTurfX = 1
	startTurfY = 1

/datum/mapGenerator/necropolis_z3
	modules = list(/datum/mapGeneratorModule/ambushing,
				/datum/mapGeneratorModule/necropolis_z3,
				/datum/mapGeneratorModule/necropolis_z3/general,
				/datum/mapGeneratorModule/necropolis_z3/wet)

/datum/mapGeneratorModule/necropolis_z3
	clusterCheckFlags = CLUSTER_CHECK_NONE
	allowed_turfs = list(/turf/open/floor/naturalstone)
	spawnableAtoms = list(/obj/structure/roguerock = 5,
						/obj/item/natural/stone = 10,
						/obj/structure/essence_node = 0.2,
						/obj/item/natural/rock = 3,
						/obj/item/natural/rock/random = 0.5,
						/obj/structure/wild_plant/nospread/mushroom/merkel = 1,
						/obj/structure/kneestingers = 1,
						/obj/structure/flora/grass/mushroom = 1,
						/obj/structure/flora/shroom_tree = 1,
						/obj/structure/flora/grass/water/reeds = 1,
						/obj/structure/wild_plant/nospread/mushroom/waddle = 1,
						/obj/structure/wild_plant/nospread/mushroom/caveweep = 1,
						/obj/structure/wild_plant/nospread/mushroom/capillus = 1,
						/obj/structure/wild_plant/nospread/mushroom/borowiki = 1)
	spawnableTurfs = list(/turf/open/water/ocean = 1)
	allowed_areas = list(/area/under/necropolis)

/datum/mapGeneratorModule/necropolis_z3/general
	clusterCheckFlags = CLUSTER_CHECK_NONE
	allowed_turfs = list(/turf/open/floor/church, /turf/open/floor/church/gold, /turf/open/floor/church/pale, /turf/open/floor/church/purple, /turf/open/floor/church/green, /turf/open/floor/church/rust)
	spawnableAtoms = list(/obj/structure/fluff/walldeco/vinez = 3,
						/obj/item/natural/stone = 4)

/datum/mapGeneratorModule/necropolis_z3/wet
	clusterCheckFlags = CLUSTER_CHECK_NONE
	allowed_turfs = list(/turf/open/water/ocean)
	spawnableAtoms = list(/obj/structure/kneestingers = 10,
							/obj/structure/flora/grass/water = 4,
							/obj/structure/flora/grass/water/reeds = 2)
