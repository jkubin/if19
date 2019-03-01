__HEADER([Josef Kubin], [2018/10/05], [proverbs])
___DESCR([the simplest script produces csv])
___POINT([direct print to stdout; buffers not used])

#           ______JAN,FEB,MAR,...
#          |     /
#      ____V____/
# --->/ JANUARY \
#     \_________/
#

# A → β
# β
define([JANUARY], [

	divert(0)dnl
$0_NAME	[$2]
divert(-1)
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
