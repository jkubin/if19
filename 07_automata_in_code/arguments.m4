__HEADER([Josef Kubin], [2019/02/26], [automata_in_code])
___USAGE([m4 ../master.m4 arguments.m4])

#      ___   ARG   ______
# --->/ ε \------>/ [, ] \---,ARG
#     \___/       \______/<--'
#
# A → β
define([ARG], [

	divert(0)COMMA[$1]dnl
divert(-1)
])

# A → β
define([COMMA], [define([$0], [, ])])

divert(0)dnl
if (func(divert(1))) {
	...
}
divert(-1)

# ...
ARG([first])

# ...
ARG([second])

# ...
ARG([third])

# ...
ARG([fourth])

# ...
ARG([fifth])

# ...
ARG([sixth])
