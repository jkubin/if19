__HEADER([Josef Kubin], [2019/02/25], [automata_in_code])
___POINT([how to reset an automaton])
___USAGE([m4 ../master.m4 second_with_reset.m4])

#      _______  CLASS   ________________  CLASS   ___
# --->/ FIRST \------->/     SECOND     \------->/ ε \---,CLASS
#     \___ε___/        \_class="shadow"_/        \___/<--'
#
# β
define([SECOND], [ class="shadow"define([$0])])
define([FIRST], [define([$0], defn([SECOND]))])

# A → β
define([CLASS], defn([FIRST]))

divert(0)dnl
<div[]CLASS>...</div>
<div[]CLASS>...</div>
<div[]CLASS>...</div>
<div[]CLASS>...</div>
<div[]CLASS>...</div>

<!-- reset automaton -->
dnl
define([CLASS], defn([FIRST]))dnl
dnl
<div[]CLASS>...</div>
<div[]CLASS>...</div>
<div[]CLASS>...</div>
<div[]CLASS>...</div>
<div[]CLASS>...</div>
<div[]CLASS>...</div>
