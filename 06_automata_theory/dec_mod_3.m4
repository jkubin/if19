__HEADER([Josef Kubin], [2018/06/28], [automaton])
___DESCR([decimal modulo three for any number length])
___POINT([an automaton example; gluing β from parts (defn)])
___USAGE([m4 ../master.m4 dec_mod_3.m4])

# L = (0*1*2*3*4*5*6*7*8*9*)*
# Σ = {ε, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9}
# N = {S, ZERO, ONE, TWO}
#
#                    ___0,3,6,9       ___0,3,6,9       ___0,3,6,9
#                   |   /            |   /            |   /
#   ___    ε     ___V__/   1,4,7   __V__/   1,4,7   __V__/
#  / S \------->/ ZERO \--------->/ ONE \--------->/ TWO \
#  \___/        \______/<---------\_____/<---------\_____/
#                  ^ |     2,5,8            2,5,8    ^ |
#                  | |             2,5,8             | |
#                  | '-------------------------------' |
#                  |               1,4,7               |
#                  '-----------------------------------'

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
		[$*], [3], [],
		[$*], [6], [],
		[$*], [9], [],

		[$*], [1], [define([$0], defn([ONE]))],
		[$*], [4], [define([$0], defn([ONE]))],
		[$*], [7], [define([$0], defn([ONE]))],

		[$*], [2], [define([$0], defn([TWO]))],
		[$*], [5], [define([$0], defn([TWO]))],
		[$*], [8], [define([$0], defn([TWO]))],

		[NOT_IN_ALPHABET($@)]
	)
])

# β rule
define([ONE], defn([PRINT])[
	# node ONE

	ifelse(
		[$*], [0], [],
		[$*], [3], [],
		[$*], [6], [],
		[$*], [9], [],

		[$*], [1], [define([$0], defn([TWO]))],
		[$*], [4], [define([$0], defn([TWO]))],
		[$*], [7], [define([$0], defn([TWO]))],

		[$*], [2], [define([$0], defn([ZERO]))],
		[$*], [5], [define([$0], defn([ZERO]))],
		[$*], [8], [define([$0], defn([ZERO]))],

		[NOT_IN_ALPHABET($@)]
	)
])

# β rule
define([TWO], defn([PRINT])[
	# node TWO

	ifelse(
		[$*], [0], [],
		[$*], [3], [],
		[$*], [6], [],
		[$*], [9], [],

		[$*], [1], [define([$0], defn([ZERO]))],
		[$*], [4], [define([$0], defn([ZERO]))],
		[$*], [7], [define([$0], defn([ZERO]))],

		[$*], [2], [define([$0], defn([ONE]))],
		[$*], [5], [define([$0], defn([ONE]))],
		[$*], [8], [define([$0], defn([ONE]))],

		[NOT_IN_ALPHABET($@)]
	)
])

# β rule
define([S], [
	# node S

	# test if input symbol is in alphabet
	ifelse(
		patsubst([[$1]], [[0-9]]), [], [],

		[NOT_IN_ALPHABET($@)]
	)

	# test length of input symbol
	ifelse(
		len($*), [1], [],

		[NOT_IN_ALPHABET($@)]
	)

              ε
	# S -----> ZERO
	define([$0], defn([ZERO]))

	#       0,3,6,9
	# ZERO ---------> ZERO
	#       1,4,7
	# ZERO ---------> ONE
	#       2,5,8
	# ZERO ---------> TWO
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

MOD_THREE(3)
MOD_THREE(2)
