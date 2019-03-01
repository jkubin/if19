__HEADER([Josef Kubin], [2019/02/21], [embedded_diagn])

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

	divert(0)dnl

[[$1]]
divert(-1)
])

# A → β
define([ITEM], [

	divert(0)dnl
[$1=$2]
divert(-1)
])

divert(0)dnl
; DO_NOT_EDIT
divert(-1)
