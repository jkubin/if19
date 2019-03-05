__HEADER([Josef Kubin], [2019/02/17], [embedded_diagn])

#                           _______CAPT
#                          |      /
#       ______  CAPT  _____V_____/
# ---->/ CAPT \----->/ NEXT_CAPT \
#      \______/      \___________/
#
#               ________ITEM
#              |       /
# CAPT  _______V______/
# ---->/ PROCESS_ITEM \
#      \______________/
#

# β
define([NEXT_CAPT], [

	define([CAPT_NAME], translit([$1], [a-z], [A-Z]))

	divert(0)
/* PROJECT[_$1] */
divert(1)
extern char PROJECT[_$1[]];dnl
divert(-1)

	# init or reset counter
	define([COUNTER], [1])
])

# A → β
define([CAPT], [

	# A → β
	define([ITEM], defn([PROCESS_ITEM]))

	# transition to the next node
	define([$0], defn([NEXT_CAPT]))

]defn([NEXT_CAPT]))

# β
define([PROCESS_ITEM], [

	divert(0)dnl
[#]define CAPT_NAME[_$1]		0x[]eval(COUNTER, 16, 2) /* ["$2"] */
divert(-1)

	# counter++
	define([COUNTER], incr(COUNTER))
])

divert(0)dnl
/*
 * DO_NOT_EDIT
 */
#ifndef __LOG_INDEX_FROM_MACROS_H
#define __LOG_INDEX_FROM_MACROS_H
divert(2)

#endif /* __LOG_INDEX_FROM_MACROS_H */
divert(-1)
