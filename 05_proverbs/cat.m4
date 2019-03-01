divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/10/06], [proverbs])
___DESCR([files created by here document])
___POINT([how to do multiple output])
___USAGE([m4 cat.m4 proverbs.mc])

#           ______JAN,FEB,MAR,...
#          |     /
#      ____V____/
# --->/ JANUARY \
#     \_________/
#

# β
# A → β
define([JANUARY], [

	esyscmd([cat <<EOF>> $0.txt
$1
EOF
])
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
