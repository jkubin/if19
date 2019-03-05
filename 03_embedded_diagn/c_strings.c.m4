__HEADER([Josef Kubin], [2019/02/17], [embedded_diagn])

#         _____CAPT
#        |    /
#      __V___/
# --->/ CAPT \
#     \______/
#
#              _______CAPT_______
#             |                  |
# CAPT  ______V_____  ITEM  _____|_____
# ---->/ FIRST_ITEM \----->/ NEXT_ITEM \---, ITEM
#      \____________/      \___________/<--'

# A → β
define([CAPT], [

	divert(0)dnl
undivert
char PROJECT[_$1[]] =
"divert(1)";
divert(-1)

	# A → β
	define([ITEM], defn([FIRST_ITEM]))
])

# β
define([FIRST_ITEM], [

	divert(0)[$2]dnl
divert(-1)

	# transition to the next node
	define([$0], defn([NEXT_ITEM]))
])

# β
define([NEXT_ITEM], [

	divert(0)\n"
"[$2]dnl
divert(-1)
])

divert(0)dnl
/*
 * DO_NOT_EDIT
 */
divert(-1)
