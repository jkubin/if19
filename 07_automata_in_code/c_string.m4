__HEADER([Josef Kubin], [2019/02/26], [automata_in_code])
___USAGE([m4 ../master.m4 c_string.m4])

#      ___  STRING   ____
# --->/ ε \-------->/ \n \---,STRING
#     \___/         \____/<--'
#
define([STRING], [

	divert(0)NEW_LINE[$1]dnl
divert(-1)
])

define([NEW_LINE], [define([$0], [\n])])

divert(0)"divert(1)";
divert(-1)

# ...
STRING([first])

# ...
STRING([second])

# ...
STRING([third])

# ...
STRING([fourth])

# ...
STRING([fifth])

# ...
STRING([sixth])
