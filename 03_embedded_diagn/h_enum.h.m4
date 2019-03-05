__HEADER([Josef Kubin], [2019/02/17], [embedded_diagn])

#      ______
# --->/ CAPT \---,CAPT
#     \______/<--'
#      ______
# --->/ ITEM \---,ITEM
#     \______/<--'
#
#               ______CAPT_______
#              |                 |
#  CAPT  ______V_______  ITEM   _|_
# ----->/ [ = COUNTER] \------>/ ε \---,ITEM
#       \______________/       \___/<--'
# β
define([PRINT_ONCE], [ = COUNTER[]define([$0])])

# A → β
define([CAPT], [

	# A → β
	define([START_VAL], defn([PRINT_ONCE]))

	define([CAPT_NAME], translit([$1], [a-z], [A-Z]))

	divert(0)dnl
undivert(1)
enum $1_log {
divert(1)dnl
};
divert(-1)

	# counter = 1
	define([COUNTER], [1])
])

# A → β
define([ITEM], [

	divert(0)dnl
	CAPT_NAME[_$1]START_VAL,	/* 0x[]eval(COUNTER, 16, 2) ["$2"] */
divert(-1)

	# counter++
	define([COUNTER], incr(COUNTER))
])

divert(0)dnl
/*
 * DO_NOT_EDIT
 */
#ifndef __LOG_INDEX_FROM_ENUM_H
#define __LOG_INDEX_FROM_ENUM_H
divert(2)
#endif /* __LOG_INDEX_FROM_ENUM_H */
divert(-1)
