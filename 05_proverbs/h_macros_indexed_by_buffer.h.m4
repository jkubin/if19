__HEADER([Josef Kubin], [2019/02/16], [proverbs])

#      _________  JAN,FEB,MAR,...   ___________
# --->/ JANUARY \----------------->/ undefined \
#     \_________/                  \____sym____/
#

# β
# A → β
define([JANUARY], [

	divert($0_HDR)dnl
[#define PROVERBS_$0		0x]eval($0_HDR - START_INDEX_HDR, 16, 2)	/* $0_NAME */
dnl [#]define [$0]		0x[]eval($0_HDR - START_INDEX_HDR, 16, 2) /* $0_CODE */	<--- same as above
divert(-1)

	# undefine already seen symbol (JANUARY, FEBRUARY, ...)
	undefine([$0])
])

# A → β
define([FEBRUARY],	defn([JANUARY]))
define([MARCH],		defn([JANUARY]))
define([APRIL],		defn([JANUARY]))
define([MAY],		defn([JANUARY]))
define([JUNE],		defn([JANUARY]))
define([JULY],		defn([JANUARY]))
define([AUGUST],	defn([JANUARY]))
define([SEPTEMBER],	defn([JANUARY]))
define([OCTOBER],	defn([JANUARY]))
define([NOVEMBER],	defn([JANUARY]))
define([DECEMBER],	defn([JANUARY]))

define([SPRING],	defn([JANUARY]))
define([SUMMER],	defn([JANUARY]))
define([AUTUMN],	defn([JANUARY]))
define([WINTER],	defn([JANUARY]))

define([FARM],		defn([JANUARY]))

define([HEADER_NAME], [__]translit(PROJECT, [a-z], [A-Z])_H)
dnl define([HEADER_NAME], __[]translit(PROJECT, [a-z], [A-Z])_H)	<--- same as above

divert(0)dnl
/*
 * DO_NOT_EDIT
 */

[#]ifndef HEADER_NAME
[#]define HEADER_NAME

divert(LAST_BUFFER)
extern char *PROJECT[[]];
extern char *PROJECT[]_ptr_array_null[[]];

[#]endif	/* HEADER_NAME */
divert(-1)
