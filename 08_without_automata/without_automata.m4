divert(-1)changequote([,])

__HEADER([Josef Kubin], [2019/02/14], [without_automata])
___POINT([a sad story about how to start writing unsustainable code])

# Soon you will end up due to the complexity of the code.
# https://en.wikipedia.org/wiki/Big_ball_of_mud

# A → β
define([MESSAGE], [

	ifdef([FIRST_MSG_AUX_SYMBOL], [
		divert(0)\n"
"[$2]dnl
divert(-1)
	], [
		define([FIRST_MSG_AUX_SYMBOL])
		divert(0)[$2]dnl
divert(-1)
	])
])

divert(0)dnl
/*
 * without automata you burn in hell :-(
 */
const char message[[]] =
"divert(1)";
divert(-1)
