__HEADER([Josef Kubin], [2018/05/17], [automaton])
___DESCR([bit modulo three for any number length])
___POINT([an automaton example; gluing β from parts (defn)])
___USAGE([m4 ../master.m4 bin_mod_3.m4])

# L = (0*1*)*
# Σ = {ε, 0, 1}
# N = {S, ZERO, ONE, TWO}
#
#                   ____0                       ____1
#                  |   /                       |   /
#   ___    ε    ___V__/   1    _____    0    __V__/
#  / S \------>/ ZERO \------>/ ONE \------>/ TWO \
#  \___/       \______/<------\_____/<------\_____/
#                         1             0

# β rule
define([PRINT], [

	divert(0)dnl
$1[]divert(-1)
])

# β rule
define([ZERO], defn([PRINT])[
	# node ZERO

	ifelse(
		[$*], [0], [],
		[$*], [1], [define([$0], defn([ONE]))],

		[NOT_IN_ALPHABET($@)]
	)
])

# β rule
define([ONE], defn([PRINT])[
	# node ONE

	ifelse(
		[$*], [0], [define([$0], defn([TWO]))],
		[$*], [1], [define([$0], defn([ZERO]))],

		[NOT_IN_ALPHABET($@)]
	)
])

# β rule
define([TWO], defn([PRINT])[
	# node TWO

	ifelse(
		[$*], [0], [define([$0], defn([ONE]))],
		[$*], [1], [],

		[NOT_IN_ALPHABET($@)]
	)
])

# β rule
define([S], [
	# node S

	# test if input symbol is in alphabet
	ifelse(
		[$*], [0], [],
		[$*], [1], [],

		[NOT_IN_ALPHABET($@)]
	)

	# print prefix
	divert(0)dnl
0b[]dnl
divert(-1)

              ε
	# S -----> ZERO
	define([$0], defn([ZERO]))

	#        0
	# ZERO ----> ZERO
	#        1
	# ZERO ----> ONE
	]defn([ZERO])[
])

# A → β
define([MOD_THREE], defn([S]))

m4wrap([
	# evaluate current state
	divert(0)dnl
ifelse(
	defn([MOD_THREE]), defn([S]),    [no input symbol],
	defn([MOD_THREE]), defn([ZERO]), [ % 3 = 0],
	defn([MOD_THREE]), defn([ONE]),  [ % 3 = 1],
	defn([MOD_THREE]), defn([TWO]),  [ % 3 = 2],
)
])

################################################################################

MOD_THREE(1)
MOD_THREE(1)
MOD_THREE(0)
