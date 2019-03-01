__HEADER([Josef Kubin], [2018/10/05], [proverbs])
___POINT([random input, output is sorted by buffer magic])

#                                    _____JAN,FEB,MAR,...
#                                   |    /
#     _________  JAN,FEB,MAR,...  __V___/
#--->/ CAPTION \---------------->/ ITEM \
#    \_________/                 \______/
#

# β
define([ITEM], [

	divert($0_SCN)dnl
$0_CODE[_]$0_COUNTER="$2"
divert(-1)

	define([$0_COUNTER], incr($0_COUNTER))
])

# β
define([CAPTION], [

	define([$0_COUNTER], [1])

	# transition to the next node
	define([$0], defn([ITEM]))

	divert($0_ABC)
BRAC($0_NAME)
divert(-1)

	# β merge
]defn([ITEM]))

# A → β
define([JANUARY],	defn([CAPTION]))
define([FEBRUARY],	defn([CAPTION]))
define([MARCH],		defn([CAPTION]))
define([APRIL],		defn([CAPTION]))
define([MAY],		defn([CAPTION]))
define([JUNE],		defn([CAPTION]))
define([JULY],		defn([CAPTION]))
define([AUGUST],	defn([CAPTION]))
define([SEPTEMBER],	defn([CAPTION]))
define([OCTOBER],	defn([CAPTION]))
define([NOVEMBER],	defn([CAPTION]))
define([DECEMBER],	defn([CAPTION]))

define([SPRING],	defn([CAPTION]))
define([SUMMER],	defn([CAPTION]))
define([AUTUMN],	defn([CAPTION]))
define([WINTER],	defn([CAPTION]))

define([FARM],		defn([CAPTION]))

divert(0)dnl
; DO_NOT_EDIT
divert(-1)
