__HEADER([Josef Kubin], [2019/02/16], [proverbs])

#                                             ______JAN,FEB,MAR,...
#                                            |     /
#      ____________  JAN,FEB,MAR,...   ______V____/
# --->/ FIRST_ITEM \----------------->/ NEXT_ITEM \
#     \____________/                  \___________/
#

# β
define([FIRST_ITEM], [

	divert($0_SCN)
char PROJECT[_]$0_CODE[[]] =
"[$2]divert($0_SCN_END)";	/* [($0)] $0_CODE BRAC($0_SCN) */
divert(-1)

	# transition to the next node
	define([$0], defn([NEXT_ITEM]))
])

# β
define([NEXT_ITEM], [

	divert($0_SCN)\n"
"[$2]dnl
divert(-1)
])

# A → β
define([JANUARY],	defn([FIRST_ITEM]))
define([FEBRUARY],	defn([FIRST_ITEM]))
define([MARCH],		defn([FIRST_ITEM]))
define([APRIL],		defn([FIRST_ITEM]))
define([MAY],		defn([FIRST_ITEM]))
define([JUNE],		defn([FIRST_ITEM]))
define([JULY],		defn([FIRST_ITEM]))
define([AUGUST],	defn([FIRST_ITEM]))
define([SEPTEMBER],	defn([FIRST_ITEM]))
define([OCTOBER],	defn([FIRST_ITEM]))
define([NOVEMBER],	defn([FIRST_ITEM]))
define([DECEMBER],	defn([FIRST_ITEM]))

define([SPRING],	defn([FIRST_ITEM]))
define([SUMMER],	defn([FIRST_ITEM]))
define([AUTUMN],	defn([FIRST_ITEM]))
define([WINTER],	defn([FIRST_ITEM]))

define([FARM],		defn([FIRST_ITEM]))

divert(0)dnl
/*
 * DO_NOT_EDIT
 */
divert(-1)
