__HEADER([Josef Kubin], [2019/02/25], [automata_in_code])
___POINT([awkward; automaton without reset])
___USAGE([m4 ../master.m4 second.m4])

#      ___  CLASS   ________________  CLASS   ___
# --->/ ε \------->/     SECOND     \------->/ ε \---,CLASS
#     \___/        \_class="shadow"_/        \___/<--'
#
# β
define([SECOND], [ class="shadow"define([$0])])

# A → β
define([CLASS], [define([$0], defn([SECOND]))])

divert(0)dnl
<div[]CLASS>...</div>
<div[]CLASS>...</div>
<div[]CLASS>...</div>
<div[]CLASS>...</div>
<div[]CLASS>...</div>
<div[]CLASS>...</div>
<div[]CLASS>...</div>
<div[]CLASS>...</div>
