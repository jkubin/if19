__HEADER([Josef Kubin], [2018/09/18], [proverbs])
___POINT([definition in JANUARY for all])

#                                          ______JAN,FEB,MAR,...
#                                         |     /
#      _________  JAN,FEB,MAR,...   ______V____/
# --->/ JANUARY \----------------->/ NEXT_ITEM \
#     \_________/                  \___________/
#

# β
# A → β
define([JANUARY], [

	divert($0_SCN)dnl
<$0_WRAP code="$0_CODE">
	<name>$0_NAME</name>
	<item>$2</item>
divert($0_SCN_END)dnl
</$0_WRAP>
divert(-1)

	# transition to the next node
	define([$0], defn([NEXT_ITEM]))
])

# β
define([NEXT_ITEM], [

	divert($0_SCN)dnl
	<item>$2</item>
divert(-1)
])

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

divert(0)dnl
<?xml version="1.0" encoding="utf-8"?>
<PROJECT lang="LANG_CODE">
divert(LAST_BUFFER)dnl
<PROJECT>
divert(-1)
