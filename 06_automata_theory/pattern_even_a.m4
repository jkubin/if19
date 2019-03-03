__HEADER([Josef Kubin], [2018/10/18], [automaton])
___DESCR([accepts even number of a])
___POINT([how to build automata in M4])
___USAGE([m4 ../master.m4 pattern_even_a.m4])

# L = (b*ab*ab*)*
# Σ = {ε, a, b}
# N = {S, ODD, EVEN}
#
#                       _____b           ____b
#                      |    /           |   /
#   _____    ε     ____V___/    a     __V__/
#  // S \\------->// EVEN \\-------->/ ODD \
#  \\___//        \\______//<--------\_____/
#                               a
#
# accepts
# ε, b, bb, aa; aba; abba; babbabbbaa; ...

# β rule
define([EVEN], [
	# node EVEN

	ifelse(
		[$*], [a], [define([$0], defn([ODD]))],
		[$*], [b], [],

		[NOT_IN_ALPHABET($@)]
	)
])

# β rule
define([ODD], [
	# node ODD

	ifelse(
		[$*], [a], [define([$0], defn([EVEN]))],
		[$*], [b], [],

		[NOT_IN_ALPHABET($@)]
	)
])

# β rule
define([S], [
	# node S

	# test if input symbol is in alphabet
	ifelse(
		[$*], [a], [],
		[$*], [b], [],

		[NOT_IN_ALPHABET($@)]
	)
              ε
	# S -----> EVEN
	define([$0], defn([EVEN]))

	]defn([EVEN])[
])

# A → β
define([EVEN_A], defn([S]))

m4wrap([
	# evaluate current state
	divert(0)dnl
ifelse(
	defn([EVEN_A]), defn([S]),    [accept (no input symbol)],
	defn([EVEN_A]), defn([EVEN]), [accept],
	[reject]dnl
)
])

################################################################################

EVEN_A(a)
EVEN_A(a)
EVEN_A(b)
EVEN_A(b)
EVEN_A(a)
EVEN_A(b)
EVEN_A(a)
