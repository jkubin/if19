__HEADER([Josef Kubin], [2019/02/17], [embedded_diagn])

#      ______ CAPT([sel]) _______
# --->/ CAPT \---------->/ UNDEF \----> undefine([CAPT], [ITEM])
#     \______/           \_______/
#
#                   _____ITEM
#                  |    /
#   CAPT([sel]) ___V___/
# ------------>/ PRINT \
#              \_______/


# A → β
define([CAPT], [

	ifelse([$1], [memory], [

		# A → β
		define([ITEM], defn([PRINT]))

		# transition to the next node
		define([$0], defn([UNDEF]))
	])
])

# β
define([UNDEF], [

	undefine(

		[$0],
		[ITEM],

	)
])

# β
define([PRINT], [

	divert(0)dnl
[$1	$2]
divert(-1)
])
