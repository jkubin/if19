__HEADER([Josef Kubin], [2019/02/17], [embedded_diagn])

#      ______
# --->/ CAPT \---,CAPT
#     \______/<--'
#      ______
# --->/ ITEM \---,ITEM
#     \______/<--'
#
#          ____CAPT____
#         |            |
#  CAPT  _V_  ITEM   __|__
# ----->/ ε \------>/ [,] \---,ITEM
#       \___/       \_____/<--'
# β
define([EPSILON_FIRST], [define([$0], [,])])

# A → β
define([CAPT], [

	# A → β
	define([COMMA], defn([EPSILON_FIRST]))

	divert(0)dnl
undivert(1),
	"$1": LBRAC[]dnl
divert(1)
	RBRAC[]dnl
divert(-1)
])

# A → β
define([ITEM], [

	divert(0)COMMA
		[{"$1": "$2"}]dnl
divert(-1)
])

divert(0)dnl
{"PROJECT": {
	"_comment": "DO_NOT_EDIT"dnl
divert(2)
}}
divert(-1)
