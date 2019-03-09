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

	divert(0)dnl
undivert(1)dnl
struct $1_log {
divert(1)dnl
};

divert(2)dnl
[#]define translit([$1], [a-z], [A-Z])(code)	(unsigned char)&((struct $1_log *)0)->code
divert(-1)

	# counter = 0
	define([COUNTER], [0])
])

# A → β
define([ITEM], [

	divert(0)dnl
	/* 0x[]eval(COUNTER, 16, 2) */ unsigned char $1;	/* "$2" */
divert(-1)

	# counter++
	define([COUNTER], incr(COUNTER))
])

divert(0)dnl
/*
 * DO_NOT_EDIT
 */
#ifndef __LOG_INDEX_FROM_STRUCT_H
#define __LOG_INDEX_FROM_STRUCT_H

divert(3)
#endif /* __LOG_INDEX_FROM_STRUCT_H */
divert(-1)
