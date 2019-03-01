__HEADER([Josef Kubin], [2019/02/25], [automata_in_code])
___POINT([actually not solved by automata, solved by higher buffer index])
___USAGE([m4 ../master.m4 last.m4])

#      ___
# --->/ ε \---,CLASS
#     \___/<--'
#
# A → ε
define([CLASS])

divert(1)dnl
<div class="shadow">...</div>
divert(0)dnl
<div[]CLASS>...</div>
<div[]CLASS>...</div>
<div[]CLASS>...</div>
<div[]CLASS>...</div>
<div[]CLASS>...</div>
<div[]CLASS>...</div>
<div[]CLASS>...</div>
<div[]CLASS>...</div>
