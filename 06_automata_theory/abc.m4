__HEADER([Josef Kubin], [2019/02/27], [automaton])
___POINT([regular grammar <=> automata])
___USAGE([m4 ../master.m4 abc.m4])

# L = (abc)*
# Σ = {ε, a, b, c}
# N = {A, B, C}
# P = {
#    A → aB
#    B → bC
#    C → cA
# }
#        _____________________
#       |                     |
#      _V_        ___        _|_
# --->/ A \----->/ B \----->/ C \
#     \_a_/      \_b_/      \_c_/
#
# A → aB
# B → bC
# C → cA
define([A], [a[]B])
define([B], [b[]C])
define([C], [c[]A])

divert(0)dnl
A
