__HEADER([Josef Kubin], [2019/02/23], [automata_theory])
___DESCR([accepts ab*a])
___POINT([how to build automata in M4])
___USAGE([m4 ../master.m4 pattern_ab_star_a.m4])

# L = ab*a
# Σ = {ε, a, b}
# N = {S, Q1, Q2, Q3, REJECT}
#
#                                 ____b
#                                |   /
#   ___    ε     ___     a      _V__/   a     _____
#  / S \------->/ Q1 \-------->/ Q2 \------->// Q3 \\
#  \___/        \____/         \____/        \\____//
#                  |                             |
#                  |              ____a,b        |
#                  |             |    /          |
#                 b|         ____V___/        a,b|
#                  '------->/ REJECT \<----------'
#                           \________/
#
# accepts
# aa; aba; abba; abbbbbbba; ...

# β rule
define([Q1], [
	# node Q1

	ifelse(
		[$*], [a], [define([$0], defn([Q2]))],
		[$*], [b], [define([$0], defn([REJECT]))],

		[NOT_IN_ALPHABET($@)]
	)
])

# β rule
define([Q2], [
	# node Q2

	ifelse(
		[$*], [a], [define([$0], defn([Q3]))],
		[$*], [b], [],

		[NOT_IN_ALPHABET($@)]
	)
])

# β rule
define([Q3], [
	# node Q3

	ifelse(
		[$*], [a], [define([$0], defn([REJECT]))],
		[$*], [b], [define([$0], defn([REJECT]))],

		[NOT_IN_ALPHABET($@)]
	)
])

# β rule
define([S], [
	# node S

	ifelse(
		[$*], [a], [],
		[$*], [b], [],

		[NOT_IN_ALPHABET($@)]
	)
              ε
	# S -----> Q1
	define([$0], defn([Q1]))

	#      a
	# Q1 ----> Q2
	#      b
	# Q2 ----> REJECT
	]defn([Q1])[
])

# β rule
define([REJECT], [
	# node REJECT

	ifelse(
		[$*], [a], [],
		[$*], [b], [],

		[NOT_IN_ALPHABET($@)]
	)
])

# A → β
define([AB_STAR_A], defn([S]))

m4wrap([
	# evaluate current state
	divert(0)dnl
ifelse(
	defn([AB_STAR_A]), defn([S]),  [reject (no input symbol)],
	defn([AB_STAR_A]), defn([Q3]), [accept],
	[reject]dnl
)
])

################################################################################

AB_STAR_A(a)
AB_STAR_A(b)
AB_STAR_A(b)
AB_STAR_A(b)
AB_STAR_A(a)
