/client/proc/toggle_mob_boss(mob/living/target in view())
	set name = "Toggle Boss Status"
	set category = "GameMaster.Fun"
	set desc = "Toggle whether this living mob shows a boss health bar."

	if(!check_rights(R_FUN|R_ADMIN))
		return
	if(!istype(target))
		return

	target.set_boss(!target.is_boss)

	var/state = target.is_boss ? "ON" : "OFF"
	to_chat(usr, span_notice("[target] boss healthbar is now [state]."))
	log_admin("[key_name(usr)] set is_boss=[target.is_boss] on [key_name(target)]")
	message_admins("[key_name_admin(usr)] set is_boss=[target.is_boss] on [ADMIN_LOOKUPFLW(target)]")
	SSblackbox.record_feedback("tally", "admin_verb", 1, "Toggle Boss Healthbar")
