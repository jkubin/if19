__HEADER([Josef Kubin], [2019/02/25], [automata_in_code])
___USAGE([m4 ../master.m4 odd_even.m4])

#      _________   CLASS   ________________
# --->/ EPSILON \-------->/     SHADOW     \
#     \____ε____/<--------\_class="shadow"_/
#                  CLASS
# β
define([SHADOW], [ class="shadow"define([$0], defn([EPSILON]))])
define([EPSILON], [define([$0], defn([SHADOW]))])

# A → β
define([CLASS], defn([EPSILON]))

divert(0)dnl
<div[]CLASS>...</div>
<div[]CLASS>...</div>
<div[]CLASS>...</div>
<div[]CLASS>...</div>
<div[]CLASS>...</div>
<div[]CLASS>...</div>
<div[]CLASS>...</div>
<div[]CLASS>...</div>
