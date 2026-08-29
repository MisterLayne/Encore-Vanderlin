/client/proc/toggle_mob_boss(mob/living/target in view())
	set name = "Toggle Boss Status"
	set category = "GameMaster.Fun"
	set desc = "Toggle whether this mob will become a boss."

	if(!check_rights(R_FUN|R_ADMIN))
		return
	if(!istype(target))
		return

	target.set_boss(!target.is_boss)

	var/state = target.is_boss ? "ON" : "OFF"
	to_chat(usr, span_notice("[target] BOSS STATE : [state]"))
	log_admin("[key_name(usr)] set is_boss=[target.is_boss] on [target.ckey]")
	message_admins("[usr.ckey] set is_boss to [target.is_boss] on [ADMIN_LOOKUPFLW(target)]")
	SSblackbox.record_feedback("tally", "admin_verb", 1, "Toggle Boss Healthbar")
