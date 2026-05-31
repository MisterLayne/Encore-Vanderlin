/obj/effect/landmark/mapGenerator/beach
	mapGeneratorType = /datum/mapGenerator/beach
	endTurfX = 1
	endTurfY = 1
	startTurfX = 1
	startTurfY = 1

/datum/mapGenerator/beach
	modules = list(/datum/mapGeneratorModule/beach)

/datum/mapGeneratorModule/beach
	clusterCheckFlags = CLUSTER_CHECK_SAME_ATOMS|CLUSTER_CHECK_DIFFERENT_ATOMS
	allowed_turfs = list(/turf/open/floor/sand,
						/turf/open/floor/sand/sandstone,
						/turf/open/floor/sand/desert)
	allowed_areas = list(/area/outdoors/beach,
						/area/outdoors/woods/heavenscoast,
						/area/outdoors/woods/whisperen,
						/area/outdoors/woods/west,
						/area/outdoors/woods/west/crescent,
						/area/outdoors/woods/west/crags)
	spawnableAtoms = list(	/obj/item/natural/stone = 11,
							/obj/item/grown/log/tree/stick = 4,
							/obj/structure/flora/tree/dying_bush = 7,
							/obj/structure/flora/tree/dead_bush = 3,
							/obj/structure/flora/tree/burnt = 1,
							/obj/item/natural/rock = 4,
							/obj/structure/flora/driftwood = 2,
							/obj/structure/flora/grass = 11,
							/obj/structure/flora/starfish = 1,
							/obj/structure/flora/shells = 1)
