/obj/item/thaumarig
	name = "thaumarig machine"
	desc = "A strange and luminescent machine that hums quietly. It has straps as if you could wear it."
	icon = 'icons/obj/clothing/suits.dmi'

	slot_flags = ITEM_SLOT_BACK
	w_class = WEIGHT_CLASS_HUGE

	var/living/carbon/human/thaumapact	// The person who binds with the suit!

	var/rig_state	// String for icon_state

	// Starting abilities of the rig
	var/list/initial_enhancements
	// What the rig should spawn with
	var/chest_type = /obj/item/clothing/suit
	var/helm_type = /obj/item/clothing/head
	var/boot_type = /obj/item/clothing/shoes/boots
	var/glove_type = /obj/item/clothing/gloves
	var/power_type = /obj/item/reagent_containers/lux

	// Status vars
	var/open = 0
	var/locked = 1
	var/interface_locked = 0
	var/locked_down = 0

	var/seal_delay = 30
	var/sealing
	var/has_power = 1
	var/no_power_slowdown = 1.5
	var/vision_restriction = VISION_RESTRICTED_NONE
	var/nopower_vision_restriction = VISION_RESTRICTED_PARTIAL

	var/datum/mini_hud/rig/minihud

/obj/item/thaumarig/Initialize()
	. = ..()

	rig_state = icon_state
	item_state = icon_state

	if(!thaumapact)
		locked = 0
