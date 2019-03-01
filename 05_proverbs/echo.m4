divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/10/06], [proverbs])
___DESCR([multiple files named as macros])
___POINT([ineffective instant solution])
___USAGE([m4 echo.m4 proverbs.mc])

#           ______JAN,FEB,MAR,...
#          |     /
#      ____V____/
# --->/ JANUARY \
#     \_________/
#

# β
# A → β
define([JANUARY], [

	esyscmd([echo '$1	$2' >> $0.txt])
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
