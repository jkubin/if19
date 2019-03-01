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

	divert(0)dnl
undivert(1)dnl
	[<$1>]
divert(1)dnl
	[</$1>]
divert(-1)
])

# A → β
define([ITEM], [

	divert(0)dnl
		[<item><name>$1</name><value>$2</value></item>]
divert(-1)
])

divert(0)dnl
<!-- DO_NOT_EDIT -->
<?xml version="1.0" encoding="utf-8"?>
<PROJECT>
divert(2)dnl
</PROJECT>
divert(-1)
