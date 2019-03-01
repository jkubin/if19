__HEADER([Josef Kubin], [2019/02/17], [embedded_diagn])

#         _____CAPT
#        |    /
#      __V___/
# --->/ CAPT \
#     \______/
#
#         _____ITEM
#        |    /
#      __V___/
# --->/ ITEM \
#     \______/
#

# A → β
define([CAPT], [

	# A → β
	define([SECTION_NAME], [$1])
])

# A → β
define([ITEM], [

	divert(0)dnl
SECTION_NAME[	$1	$2]
divert(-1)
])
