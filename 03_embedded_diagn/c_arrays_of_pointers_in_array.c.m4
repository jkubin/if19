__HEADER([Josef Kubin], [2019/02/17], [embedded_diagn])

#                          _______CAPT
#                         |      /
#      ______  CAPT  _____V_____/
# --->/ CAPT \----->/ NEXT_CAPT \
#     \______/      \___________/
#
#                ________ITEM
#               |       /
# CAPT   _______V______/
# ----->/ PROCESS_ITEM \
#       \______________/
#

# A → β
define([CAPT], [

	# A → β
	define([ITEM], defn([PROCESS_ITEM]))

	# transition to the next node
	define([$0], defn([NEXT_CAPT]))

	divert(0)dnl
undivert(1)
char *PROJECT[_$1[]] = {
divert(1)dnl
};
divert(2)dnl

char **PROJECT[[]] = {
	PROJECT[_$1],
divert(3)dnl
};
divert(-1)
])

# β
define([NEXT_CAPT], [

	divert(0)dnl
undivert(1)
char *PROJECT[_$1[]] = {
divert(1)dnl
};
divert(2)dnl
	PROJECT[_$1],
divert(-1)
])

# β
define([PROCESS_ITEM], [

	divert(0)dnl
	"[$2]",
divert(-1)
])

divert(0)dnl
/*
 * DO_NOT_EDIT
 */
divert(-1)
