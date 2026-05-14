/datum/objective/personal/build_hell_shrine
	name = "Construct Profane Shrines"
	category = "Hell's Chosen"
	triumph_count = 2
	immediate_effects = list("Gained an ability to construct profane shrines")
	rewards = list("2 Triumphs", "Hell grows stronger", "Hell blesses you (+2 Fortune)")
	var/target_type = /obj/structure/fluff/psycross/archdevil_cross
	var/target_count = 2
	var/current_count = 0

/datum/objective/personal/build_hell_shrine/on_creation()
	. = ..()
	if(owner?.current)
		owner.current.mind.teach_crafting_recipe(/datum/blueprint_recipe/archdevils/shrine)
		RegisterSignal(owner.current, COMSIG_ITEM_CRAFTED, PROC_REF(on_item_crafted))
	update_explanation_text()

/datum/objective/personal/build_hell_shrine/Destroy()
	if(owner?.current)
		UnregisterSignal(owner.current, COMSIG_ITEM_CRAFTED)
	return ..()

/datum/objective/personal/build_hell_shrine/proc/on_item_crafted(datum/source, mob/user, craft_path)
	SIGNAL_HANDLER
	if(completed || !ispath(craft_path, target_type))
		return

	current_count++
	if(current_count < target_count)
		to_chat(owner.current, span_notice("You have built [current_count] out of [target_count] profane shrines."))
		return

	complete_objective()

/datum/objective/personal/build_hell_shrine/complete_objective()
	. = ..()
	to_chat(owner.current, span_greentext("You have built all the required profane shrines, completing Hell's objective!"))
	adjust_storyteller_influence(ARCHDEVILS, 20)
	UnregisterSignal(owner.current, COMSIG_ITEM_CRAFTED)

/datum/objective/personal/build_hell_shrine/reward_owner()
	. = ..()
	owner.current.adjust_stat_modifier(STATMOD_ARCHDEVILS_BLESSING, list(STAT_FORTUNE = 2))

/datum/objective/personal/build_hell_shrine/update_explanation_text()
	explanation_text = "Construct [target_count] profane shrine[target_count > 1 ? "s" : ""] to spread Hell's corruption!"

