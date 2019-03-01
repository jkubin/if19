__HEADER([Josef Kubin], [2019/02/17], [embedded_diagn])

#      ______
# --->/ CAPT \---,CAPT
#     \______/<--'
#      ______
# --->/ ITEM \---,ITEM
#     \______/<--'
#
#          _____CAPT_____
#         |              |
#  CAPT  _V_  ITEM   ____|_____
# ----->/ ε \------>/ [\n"LF"] \---,ITEM
#       \___/       \__________/<--'
# β
define([EPSILON_FIRST], [define([$0], [\n"
"])])

# A → β
define([CAPT], [

	divert(0)dnl
undivert
char PROJECT[_$1][[]] =
"divert(1)";
divert(-1)

	# A → β
	define([NEW_LINE], defn([EPSILON_FIRST]))
])

# A → β
define([ITEM], [

	divert(0)NEW_LINE[$2]dnl
divert(-1)
])

divert(0)dnl
/*
 * DO_NOT_EDIT
 */
divert(-1)
