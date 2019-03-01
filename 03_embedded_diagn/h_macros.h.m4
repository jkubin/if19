__HEADER([Josef Kubin], [2019/02/17], [embedded_diagn])

#         _____CAPT
#        |    /
#      __V___/
# --->/ CAPT \
#     \______/
#
#         _____ITEM
#        |    /
#      __V___/
# --->/ ITEM \
#     \______/
#

# A → β
define([CAPT], [

	# A → β
	define([CAPT_NAME], translit([$1], [a-z], [A-Z]))

	divert(0)
/* PROJECT[_$1] */
divert(-1)

	# init or reset counter
	define([COUNTER], [1])
])

# A → β
define([ITEM], [

	divert(0)dnl
[#]define CAPT_NAME[_$1]	0x[]eval(COUNTER, 16, 2) /* ["$2"] */
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
