__HEADER([Josef Kubin], [2019/02/16], [proverbs])

#      ____________  JAN,FEB,MAR,...   ___________
# --->/ ADD_DECLAR \----------------->/ undefined \
#     \____________/                  \____sym____/
#

# β
define([ADD_DECLAR], [

	divert($0_HDR)dnl
extern char PROJECT[_]$0_CODE[[]];
divert(-1)

	# undefine symbols (JANUARY, ...)
	undefine([$0])
])

# A → β
define([JANUARY],	defn([ADD_DECLAR]))
define([FEBRUARY],	defn([ADD_DECLAR]))
define([MARCH],		defn([ADD_DECLAR]))
define([APRIL],		defn([ADD_DECLAR]))
define([MAY],		defn([ADD_DECLAR]))
define([JUNE],		defn([ADD_DECLAR]))
define([JULY],		defn([ADD_DECLAR]))
define([AUGUST],	defn([ADD_DECLAR]))
define([SEPTEMBER],	defn([ADD_DECLAR]))
define([OCTOBER],	defn([ADD_DECLAR]))
define([NOVEMBER],	defn([ADD_DECLAR]))
define([DECEMBER],	defn([ADD_DECLAR]))

define([SPRING],	defn([ADD_DECLAR]))
define([SUMMER],	defn([ADD_DECLAR]))
define([AUTUMN],	defn([ADD_DECLAR]))
define([WINTER],	defn([ADD_DECLAR]))

define([FARM],		defn([ADD_DECLAR]))

define([HEADER_NAME],	__[]translit(PROJECT, [a-z], [A-Z])_H)

divert(0)dnl
/*
 * DO_NOT_EDIT
 */

[#]ifndef HEADER_NAME
[#]define HEADER_NAME

divert(LAST_BUFFER)
[#]endif	/* HEADER_NAME */
divert(-1)
