__HEADER([Josef Kubin], [2018/10/27], [java])
__THANKS([https://docstore.mik.ua/orelly/xml/jxslt/ch08_05.htm])
___DESCR([java source code generator by two different paradigms])
___POINT([XSLT versus M4])
#      _______
# --->/ CLASS \---,CLASS
#     \_______/<--'
#      __________
# --->/ PROPERTY \---,PROPERTY
#     \__________/<--'
#
#           ______CLASS______
#          |                 |
#  CLASS  _V_  PROPERTY   ___|__
# ------>/ ε \---------->/ [, ] \---,PROPERTY
#        \___/           \______/<--'
# β
define([EPSILON_FIRST], [define([$0], [, ])])

# A → β
define([CLASS], [

	# A → β
	define([COMMA], defn([EPSILON_FIRST]))

	divert(0)dnl
undivert
public class $1 implements java.io.Serializable {
divert(CONSTRUCTOR_NAME)
	public $1(divert(CONSTRUCTOR_ARGS_BRAC)) {
divert(CONSTRUCTOR_BRAC)dnl
	}
divert(FINAL_BRAC)dnl
}
divert(-1)
])

# A → β
define([PROPERTY], [

	divert(0)dnl
	private $2 $1;
divert(CONSTRUCTOR_ARGS)COMMA[]$2 $1[]dnl
divert(CONSTRUCTOR_ASSIGN)dnl
		this.$1 = $1;
divert(GETTERS)
	public $2 get$3() {
		return this.$1;
	}
divert(-1)

	# if non-empty setter
	ifelse([$4], [], [], [

		divert(SETTERS)
	public void set$4($2 $1) {
		this.$1 = $1;
	}
divert(-1)
	])
])

divert(0)dnl
/**
 * DO_NOT_EDIT
 */
divert(-1)
