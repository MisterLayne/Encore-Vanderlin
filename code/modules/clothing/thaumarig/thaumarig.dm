#define THAUMARIG_ONLY_DEPLOY  1
#define THAUMARIG_ONLY_RETRACT 2
#define THAUMARIG_TOGGLE       0
#define THAUMARIG_SEAL_DELAY   (4 SECONDS)
#define THAUMARIG_TRAIT        "thaumarig"

/obj/item/thaumarig
	name = "thaumarig harness"
	desc = ""
	icon = 'icons/roguetown/clothing/armor.dmi'
	icon_state = "halfplate"
	item_state = "halfplate"
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK_L | ITEM_SLOT_BACK_R
	resistance_flags = FIRE_PROOF
	equip_delay_self = 3 SECONDS
	unequip_delay_self = 3 SECONDS

	actions_types = list(/datum/action/item_action/thaumarig_toggle)

	var/helm_type = /obj/item/clothing/head/helmet/thaumarig
	var/chest_type = /obj/item/clothing/armor/thaumarig
	var/glove_type = /obj/item/clothing/gloves/thaumarig
	var/pants_type = /obj/item/clothing/pants/thaumarig
	var/boot_type = /obj/item/clothing/shoes/boots/thaumarig

	var/obj/item/clothing/head/helmet/thaumarig/helmet
	var/obj/item/clothing/armor/thaumarig/chest
	var/obj/item/clothing/gloves/thaumarig/gloves
	var/obj/item/clothing/pants/thaumarig/pants
	var/obj/item/clothing/shoes/boots/thaumarig/boots

	var/mob/living/carbon/human/wearer
	var/deployed = FALSE
	var/sealing = FALSE
	var/seal_delay = THAUMARIG_SEAL_DELAY
	var/force_unequip_conflicts = FALSE

/obj/item/thaumarig/Initialize()
	. = ..()
	if(chest_type)
		chest = new chest_type(src)
		bind_piece(chest)
	if(helm_type)
		helmet = new helm_type(src)
		bind_piece(helmet)
	if(glove_type)
		gloves = new glove_type(src)
		bind_piece(gloves)
	if(pants_type)
		pants = new pants_type(src)
		bind_piece(pants)
	if(boot_type)
		boots = new boot_type(src)
		bind_piece(boots)

/obj/item/thaumarig/Destroy()
	force_stow_pieces()
	wearer = null
	QDEL_NULL(helmet)
	QDEL_NULL(chest)
	QDEL_NULL(gloves)
	QDEL_NULL(pants)
	QDEL_NULL(boots)
	return ..()

/obj/item/thaumarig/dropped(mob/living/user)
	if(deployed)
		force_stow_pieces()
	wearer = null
	return ..()

/obj/item/thaumarig/proc/force_stow_pieces()
	for(var/obj/item/clothing/piece as anything in get_pieces())
		if(!piece)
			continue
		unlock_piece(piece)
		if(piece.loc != src)
			piece.forceMove(src)
	deployed = FALSE
	sealing = FALSE

/obj/item/thaumarig/proc/bind_piece(obj/item/clothing/piece)
	if(!piece)
		return
	if(istype(piece, /obj/item/clothing/head/helmet/thaumarig))
		var/obj/item/clothing/head/helmet/thaumarig/helm = piece
		helm.rig = src
	else if(istype(piece, /obj/item/clothing/armor/thaumarig))
		var/obj/item/clothing/armor/thaumarig/cuirass = piece
		cuirass.rig = src
	else if(istype(piece, /obj/item/clothing/gloves/thaumarig))
		var/obj/item/clothing/gloves/thaumarig/gauntlets = piece
		gauntlets.rig = src
	else if(istype(piece, /obj/item/clothing/pants/thaumarig))
		var/obj/item/clothing/pants/thaumarig/chausses = piece
		chausses.rig = src
	else if(istype(piece, /obj/item/clothing/shoes/boots/thaumarig))
		var/obj/item/clothing/shoes/boots/thaumarig/sabatons = piece
		sabatons.rig = src
	piece.forceMove(src)

/obj/item/thaumarig/examine(mob/user)
	. = ..()
	. += span_notice("It is [deployed ? "breathing down its bearer's neck" : "dormant.. for now"].")
	. += span_notice("Wear it on your back, stand still, and use the rig itself to unfold the armor.")
	for(var/obj/item/piece as anything in get_pieces())
		if(!piece)
			continue
		var/on_body = wearer && piece.loc == wearer
		. += span_info("[piece.name] — [on_body ? "deployed" : "retracted"].")

/obj/item/thaumarig/proc/get_pieces()
	RETURN_TYPE(/list)
	return list(helmet, chest, gloves, pants, boots)

/obj/item/thaumarig/equipped(mob/living/user, slot)
	. = ..()
	if(!ishuman(user))
		return
	if(slot & (ITEM_SLOT_BACK_L | ITEM_SLOT_BACK_R))
		wearer = user
	else
		if(deployed)
			retract_all()
		wearer = null

/obj/item/thaumarig/attack_self(mob/user)
	. = ..()
	toggle_rig(user)

/obj/item/thaumarig/ui_action_click(mob/user, actiontype)
	toggle_rig(user)

/obj/item/thaumarig/item_action_slot_check(slot, mob/user, datum/action/action)
	return (slot & (ITEM_SLOT_BACK_L | ITEM_SLOT_BACK_R | ITEM_SLOT_BACK))

/obj/item/thaumarig/verb/toggle_thaumarig()
	set name = "Toggle Thaumarig"
	set category = "Object"
	set src in usr
	toggle_rig(usr)

/obj/item/thaumarig/proc/worn_on_back(mob/living/carbon/human/H)
	if(!H)
		return FALSE
	if(loc != H)
		return FALSE
	if(H.get_item_by_slot(ITEM_SLOT_BACK_L) == src)
		return TRUE
	if(H.get_item_by_slot(ITEM_SLOT_BACK_R) == src)
		return TRUE
	if(H.backl == src || H.backr == src)
		return TRUE
	return FALSE

/obj/item/thaumarig/proc/is_standing_still(mob/living/carbon/human/H)
	if(!H || H.stat)
		return FALSE
	if(H.incapacitated())
		return FALSE
	if(H.body_position != STANDING_UP)
		return FALSE
	if(H.resting)
		return FALSE
	return TRUE

/obj/item/thaumarig/proc/can_keep_channeling(mob/living/carbon/human/H)
	return worn_on_back(H) && is_standing_still(H)

/obj/item/thaumarig/proc/can_start_channel(mob/living/carbon/human/H, silent = FALSE)
	if(!H)
		return FALSE
	if(sealing)
		if(!silent)
			to_chat(H, span_warning("The rig is still unfolding."))
		return FALSE
	if(!worn_on_back(H))
		if(!silent)
			to_chat(H, span_warning("I must wear [src] on my back before I can awaken it."))
		return FALSE
	if(!is_standing_still(H))
		if(!silent)
			to_chat(H, span_warning("I must stand still to [deployed ? "dismiss" : "unfold"] the plates."))
		return FALSE
	return TRUE

/obj/item/thaumarig/proc/toggle_rig(mob/user)
	if(!ishuman(user))
		return FALSE
	var/mob/living/carbon/human/H = user
	if(!can_start_channel(H))
		return FALSE
	wearer = H
	if(deployed)
		return retract_all()
	return deploy_all()

/obj/item/thaumarig/proc/run_channel(mob/living/carbon/human/H)
	if(!seal_delay)
		return can_keep_channeling(H)
	return do_after(H, seal_delay, src, IGNORE_HELD_ITEM | IGNORE_USER_DIR_CHANGE, TRUE, CALLBACK(src, PROC_REF(can_keep_channeling), H), THAUMARIG_TRAIT)

/obj/item/thaumarig/proc/deploy_all()
	if(!wearer || sealing)
		return FALSE
	if(!can_start_channel(wearer))
		return FALSE
	sealing = TRUE
	wearer.visible_message(
		span_warning(""),
		span_notice("")
	)
	if(!run_channel(wearer))
		sealing = FALSE
		to_chat(wearer, span_warning("The unfolding is interrupted. I must stand still with the rig on my back."))
		return FALSE
	if(!can_keep_channeling(wearer))
		sealing = FALSE
		to_chat(wearer, span_warning("The unfolding fails- I am no longer standing with the rig on my back."))
		return FALSE

	var/failed = FALSE
	failed |= !toggle_piece(helmet, ITEM_SLOT_HEAD, THAUMARIG_ONLY_DEPLOY)
	failed |= !toggle_piece(chest, ITEM_SLOT_ARMOR, THAUMARIG_ONLY_DEPLOY)
	failed |= !toggle_piece(gloves, ITEM_SLOT_GLOVES, THAUMARIG_ONLY_DEPLOY)
	failed |= !toggle_piece(pants, ITEM_SLOT_PANTS, THAUMARIG_ONLY_DEPLOY)
	failed |= !toggle_piece(boots, ITEM_SLOT_SHOES, THAUMARIG_ONLY_DEPLOY)

	sealing = FALSE
	deployed = TRUE
	if(failed)
		to_chat(wearer, span_warning("Some pieces could not grasp... remove the blockage."))
	else
		to_chat(wearer, span_notice("The [src] seals shut around me."))
	playsound(wearer, 'sound/foley/equip/equip_armor_plate.ogg', 70, TRUE)
	return TRUE

/obj/item/thaumarig/proc/retract_all(instant = FALSE)
	if(sealing && !instant)
		return FALSE
	if(!wearer && !instant)
		return FALSE
	if(wearer && !instant && !can_start_channel(wearer))
		return FALSE
	sealing = TRUE
	if(wearer && !instant)
		wearer.visible_message(
			span_warning(""),
			span_notice("")
		)
		if(!run_channel(wearer))
			sealing = FALSE
			to_chat(wearer, span_warning("The dismissal is interrupted. I must stand still with the rig on my back."))
			return FALSE

	toggle_piece(helmet, ITEM_SLOT_HEAD, THAUMARIG_ONLY_RETRACT)
	toggle_piece(chest, ITEM_SLOT_ARMOR, THAUMARIG_ONLY_RETRACT)
	toggle_piece(gloves, ITEM_SLOT_GLOVES, THAUMARIG_ONLY_RETRACT)
	toggle_piece(pants, ITEM_SLOT_PANTS, THAUMARIG_ONLY_RETRACT)
	toggle_piece(boots, ITEM_SLOT_SHOES, THAUMARIG_ONLY_RETRACT)

	sealing = FALSE
	deployed = FALSE
	if(wearer)
		playsound(wearer, 'sound/foley/dropsound/armor_drop.ogg', 60, TRUE)
	return TRUE

/obj/item/thaumarig/proc/toggle_piece(obj/item/clothing/piece, slot, mode = THAUMARIG_TOGGLE)
	if(!piece)
		return TRUE
	var/mob/living/carbon/human/H = wearer
	var/on_body = H && (piece.loc == H)

	if(mode == THAUMARIG_ONLY_DEPLOY && on_body)
		return TRUE
	if(mode == THAUMARIG_ONLY_RETRACT && !on_body)
		if(piece.loc != src)
			piece.forceMove(src)
		return TRUE

	if(mode == THAUMARIG_ONLY_RETRACT || (mode == THAUMARIG_TOGGLE && on_body))
		stow_piece(piece, H)
		return TRUE

	if(!H)
		return FALSE
	var/obj/item/blocking = H.get_item_by_slot(slot)
	if(blocking && blocking != piece)
		if(!force_unequip_conflicts || HAS_TRAIT(blocking, TRAIT_NODROP))
			to_chat(H, span_warning("[blocking] is in the way of [piece]."))
			return FALSE
		if(!H.dropItemToGround(blocking))
			to_chat(H, span_warning("I cannot clear [blocking] out of the way."))
			return FALSE

	if(!H.equip_to_slot_if_possible(piece, slot, disable_warning = TRUE, bypass_equip_delay_self = TRUE))
		if(!H.equip_to_slot(piece, slot))
			piece.forceMove(src)
			to_chat(H, span_warning("[piece] refuses to grasp."))
			return FALSE
	lock_piece(piece)
	return TRUE

/obj/item/thaumarig/proc/lock_piece(obj/item/clothing/piece)
	ADD_TRAIT(piece, TRAIT_NODROP, THAUMARIG_TRAIT)

/obj/item/thaumarig/proc/unlock_piece(obj/item/clothing/piece)
	REMOVE_TRAIT(piece, TRAIT_NODROP, THAUMARIG_TRAIT)

/obj/item/thaumarig/proc/stow_piece(obj/item/clothing/piece, mob/living/carbon/human/H)
	unlock_piece(piece)
	if(H && piece.loc == H)
		// force=TRUE so TRAIT_NODROP does not trap the piece on the body
		if(!H.transferItemToLoc(piece, src, TRUE))
			H.dropItemToGround(piece, TRUE)
			piece.forceMove(src)
	else if(piece.loc != src)
		piece.forceMove(src)

/obj/item/clothing/head/helmet/thaumarig
	name = "thaumarig helm"
	desc = ""
	icon_state = "knight"
	item_state = "knight"
	armor_class = AC_HEAVY
	clothing_flags = CANT_SLEEP_IN
	resistance_flags = FIRE_PROOF
	equip_delay_self = 0
	unequip_delay_self = 0
	var/obj/item/thaumarig/rig

/obj/item/clothing/head/helmet/thaumarig/dropped(mob/user)
	. = ..()
	if(rig && loc != rig && loc != rig.wearer)
		forceMove(rig)

/obj/item/clothing/armor/thaumarig
	name = "thaumarig cuirass"
	desc = ""
	icon = 'icons/roguetown/clothing/armor.dmi'
	icon_state = "halfplate"
	item_state = "halfplate"
	body_parts_covered = COVERAGE_ALL_BUT_LEGS
	armor_class = AC_HEAVY
	clothing_flags = CANT_SLEEP_IN
	resistance_flags = FIRE_PROOF
	equip_delay_self = 0
	unequip_delay_self = 0
	var/obj/item/thaumarig/rig

/obj/item/clothing/armor/thaumarig/dropped(mob/user)
	. = ..()
	if(rig && loc != rig && loc != rig.wearer)
		forceMove(rig)

/obj/item/clothing/gloves/thaumarig
	name = "thaumarig gauntlets"
	desc = ""
	icon = 'icons/roguetown/clothing/gloves.dmi'
	icon_state = "gauntlets"
	item_state = "gauntlets"
	armor_class = AC_HEAVY
	clothing_flags = CANT_SLEEP_IN
	resistance_flags = FIRE_PROOF
	equip_delay_self = 0
	unequip_delay_self = 0
	var/obj/item/thaumarig/rig

/obj/item/clothing/gloves/thaumarig/dropped(mob/user)
	. = ..()
	if(rig && loc != rig && loc != rig.wearer)
		forceMove(rig)

/obj/item/clothing/pants/thaumarig
	name = "thaumarig chausses"
	desc = ""
	icon_state = "plate_legs"
	item_state = "plate_legs"
	gender = PLURAL
	armor_class = AC_HEAVY
	clothing_flags = CANT_SLEEP_IN
	resistance_flags = FIRE_PROOF
	equip_delay_self = 0
	unequip_delay_self = 0
	var/obj/item/thaumarig/rig

/obj/item/clothing/pants/thaumarig/dropped(mob/user)
	. = ..()
	if(rig && loc != rig && loc != rig.wearer)
		forceMove(rig)

/obj/item/clothing/shoes/boots/thaumarig
	name = "thaumarig sabatons"
	desc = ""
	icon_state = "armorboots"
	item_state = "armorboots"
	armor_class = AC_HEAVY
	clothing_flags = CANT_SLEEP_IN
	resistance_flags = FIRE_PROOF
	equip_delay_self = 0
	unequip_delay_self = 0
	var/obj/item/thaumarig/rig

/obj/item/clothing/shoes/boots/thaumarig/dropped(mob/user)
	. = ..()
	if(rig && loc != rig && loc != rig.wearer)
		forceMove(rig)

/datum/action/item_action/thaumarig_toggle
	name = "Toggle Thaumarig"

#undef THAUMARIG_ONLY_DEPLOY
#undef THAUMARIG_ONLY_RETRACT
#undef THAUMARIG_TOGGLE
#undef THAUMARIG_SEAL_DELAY
#undef THAUMARIG_TRAIT
