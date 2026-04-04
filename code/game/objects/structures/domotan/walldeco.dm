//Separate file to reduce conflicts
/obj/structure/fluff/walldeco/banner
	name = "shirleigh flag"
	desc = "A banner in the standard decorum of the Shirleighs, blue as sky and white as the stars it hides."
	icon = 'icons/roguetown/misc/domotan/decoration.dmi'
	icon_state = "wallflag"

//Meant to change according to whatever regent is actually in charge
/obj/structure/fluff/walldeco/customflag/regent
	name = "regent flag"
	desc = "A Shirleighan house banner, indicating the standard of the current standing regent."
	icon = 'icons/roguetown/misc/domotan/decoration.dmi'
	icon_state = "wallflag"
	uses_lord_coloring = LORD_PRIMARY | LORD_SECONDARY

/obj/structure/fluff/walldeco/churchbanner
	name = "katholikos banner"
	desc = "A proud banner demarking the territory of the Katholikos. Elementalists wander these parts."
	icon = 'icons/roguetown/misc/domotan/decoration.dmi'
	icon_state = "church-purple"

/obj/structure/fluff/walldeco/churchbanner/red
	icon_state = "church-red"

/obj/structure/fluff/walldeco/churchbanner/jealousgod
	name = "sigil of the One Envy"
	desc = "A roughened banner, in its age it still proudly bears the symbolism of the One Envy. It urges you to not look away."
	icon_state = "envy"
