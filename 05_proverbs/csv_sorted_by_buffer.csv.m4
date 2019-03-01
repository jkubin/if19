__HEADER([Josef Kubin], [2018/10/05], [proverbs])
___DESCR([the simplest script produces csv])
___POINT([random input, output is sorted by buffer magic])

#           ______JAN,FEB,MAR,...
#          |     /
#      ____V____/
# --->/ PROVERB \
#     \_________/
#

# β
define([PROVERB], [

	divert($0_HDR)dnl
$0_NAME[	$1	$2]
divert(-1)
])

# A → β
define([JANUARY],	defn([PROVERB]))
define([FEBRUARY],	defn([PROVERB]))
define([MARCH],		defn([PROVERB]))
define([APRIL],		defn([PROVERB]))
define([MAY],		defn([PROVERB]))
define([JUNE],		defn([PROVERB]))
define([JULY],		defn([PROVERB]))
define([AUGUST],	defn([PROVERB]))
define([SEPTEMBER],	defn([PROVERB]))
define([OCTOBER],	defn([PROVERB]))
define([NOVEMBER],	defn([PROVERB]))
define([DECEMBER],	defn([PROVERB]))

define([SPRING],	defn([PROVERB]))
define([SUMMER],	defn([PROVERB]))
define([AUTUMN],	defn([PROVERB]))
define([WINTER],	defn([PROVERB]))

define([FARM],		defn([PROVERB]))
