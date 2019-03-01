__HEADER([Josef Kubin], [2019/02/16], [proverbs])

#                                             ________JAN,FEB,MAR,...
#                                            |       /
#      ____________  JAN,FEB,MAR,...   ______V______/
# --->/ FIRST_ITEM \----------------->/ INC_PROVERB \
#     \____________/                  \_____________/
#

# set initial value
define([TOTAL_SUM_OF_PROVEBS], 0)

# β
define([FIRST_ITEM], [

	divert($0_HDR)dnl
[#define $0		0x]eval($0_HDR - START_INDEX_HDR, 16, 2)	/* $0_NAME */
divert(LAST_BUFFER)dnl
extern char *PROJECT[_]$0_CODE[[]];
extern char *PROJECT[_]$0_CODE[]_null[[]];
divert(-1)

	# push item to the stack named "COUNTER" to evaluate it later
	pushdef([COUNTER], [$0])

	# increment counter
	define([TOTAL_SUM_OF_PROVEBS], incr(TOTAL_SUM_OF_PROVEBS))

	# init counter for a subset of proverbs
	define([$0_COUNTER], 1)

	# transition to the next node
	define([$0], defn([INC_PROVERB]))
])

# β
define([INC_PROVERB], [

	# increment the particular counter
	define([$0_COUNTER], incr($0_COUNTER))
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

define([HEADER_NAME], __[]translit(PROJECT, [a-z], [A-Z])_H)

# A → β
define([EVALUATE], [

	divert($1_SCN)dnl
[#define $1_TOTAL_SUM		]$1_COUNTER
divert(-1)
])

# A → β
define([EVALUATE_COUNTERS], [

	ifdef([COUNTER], [

		EVALUATE(defn([COUNTER]))

		popdef([COUNTER])

		# recursive loop (no brackets around)
		$0
	])
])

m4wrap([
	EVALUATE_COUNTERS

	divert(0)dnl
/*
 * DO_NOT_EDIT
 */

[#]ifndef HEADER_NAME
[#]define HEADER_NAME

/* indices to ptr array */
divert(CLOSE_NAVIG)
/* sums of proverb items */
divert(START_INDEX_PTR)
[#define TOTAL_SUM_OF_PROVEBS]		TOTAL_SUM_OF_PROVEBS

/* declarations */
extern char **PROJECT[[]];
divert(LAST_BUFFER)
[#]endif	/* HEADER_NAME */
])
