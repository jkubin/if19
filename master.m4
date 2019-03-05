divert(-1)changequote([,])

define([PROJECT_NAME],		[Source Code Generators])
define([PROJECT_ROOT_URL],	[https://github.com/jkubin/if19])

__HEADER([Josef Kubin], [2018/10/15], [if19])
___DESCR([you must understand https://en.wikipedia.org/wiki/Automata_theory])
___POINT([the most general rules for all scripts])
___USAGE([m4 master.m4 ... specific.m4 most_specific_src.m4 source_data.mc > specific.src])

# https://en.wikipedia.org/wiki/Formal_grammar
#
# Formal Grammar (Chomsky type)
# G = (N, Σ, P, S)
# N: fin. set of non-terminal symbols
# Σ: fin. set of terminal symbols
#    N ∩ Σ = ø
# P: fin. set of production (rewrite) rules
#    (N ∪ Σ)* N (N ∪ Σ)* → (N ∪ Σ)*
# S: is the start symbol
#    S ∈ N

# https://en.wikipedia.org/wiki/Context-free_grammar
#
# Production rules in context-free grammar (type 2)
# P: A → β
#    A ∈ N
#    β ∈ (N ∪ Σ)*
#
# Productions rules in M4
# M4: define(`A', `β')


# LOUD alert for users in target files
define([DO_NOT_EDIT], [DO NOT EDIT! Generated automatically!])

# select n-th argument of `A' and expand it ($n → β)
define([ARG1], [$1])
define([ARG2], [$2])
define([ARG3], [$3])
define([ARG4], [$4])
define([ARG5], [$5])
define([ARG6], [$6])
define([ARG7], [$7])
define([ARG8], [$8])
define([ARG9], [$9])
define([ARG10], [$10])

# returns number of arguments
define([LEN], [$#])

# put additional brackets around result
define([BRAC], [[$@]])

# put left/right unpaired bracket (to JSON, Bash, ... generators)
define([LBRAC], [changequote`'format(`%c', 91)changequote([,])])
define([RBRAC], [changequote`'format(`%c', 93)changequote([,])])

# select last argument and expand it ($$# → β)
define([LAST], [pushdef([$0], [$$#])$0($@)[]popdef([$0])])

# select last but one and expand it ($decr($#) → β,  must be at least two arguments)
define([LAST_BUT_ONE], [pushdef([$0], $decr($#))$0($@)[]popdef([$0])])

# auxiliary macro for strings to instantly see length
define([RULER], [ifelse([$1], [1], [1], [$0(decr($1))[]eval($1 % 10)])])

# use general warning, if something is strange
define([G_WARNING], [errprint(__file__:__line__[: warning: $*
])])

# use general abort if something goes wrong
define([G_ERROR], [errprint(__file__:__line__[: error: $*
])m4exit(1)])

# error rule for examples with automata
define([NOT_IN_ALPHABET], [G_ERROR([symbol ‘$*’ is not in alphabet])])

# β
define([COUNT_UP], [
	define([#$0], $1)
	define([$0], [indir([#$0])define([#$0], incr(indir([#$0])))])
])

# β
define([COUNT_DOWN], [
	define([#$0], $1)
	define([$0], [indir([#$0])define([#$0], decr(indir([#$0])))])
])
