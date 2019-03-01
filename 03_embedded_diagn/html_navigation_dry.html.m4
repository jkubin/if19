# vim: set ft=m4:
# ^^^^ this is Vim modeline (to force M4 filetype)
__HEADER([Josef Kubin], [2019/02/17], [embedded_diagn])
___POINT([gluing β from parts (defn)])

#                           _______CAPT
#                          |      /
#       ______  CAPT  _____V_____/
# ---->/ CAPT \----->/ NEXT_CAPT \
#      \______/      \___________/
#
#               ________ITEM
#              |       /
# CAPT  _______V______/
# ---->/ PROCESS_ITEM \
#      \______________/
#

# β
define([NEXT_CAPT], [

	divert(0)dnl
		[<li><a href="#$1">$1</a></li>]
divert(2)dnl
undivert(4)dnl
	<section>
		[<h2 id="$1">$1</h2>]
		<ol>
divert(4)dnl
		</ol>
	</section>
divert(-1)
])

# A → β
define([CAPT], [

	# A → β
	define([ITEM], defn([PROCESS_ITEM]))

	# transition to the next node
	define([$0], defn([NEXT_CAPT]))

divert(0)dnl
<nav>
	<ul>
divert(1)dnl
	</ul>
</nav>
divert(-1)
]defn([NEXT_CAPT]))

# β
define([PROCESS_ITEM], [

	divert(2)dnl
			[<li><b>$1</b>: $2</li>]
divert(-1)
])

define([TITLE], [Power of M4])

divert(0)dnl
<!DOCTYPE html>
<!-- DO_NOT_EDIT -->
<html>
<head>
<meta charset="UTF-8">
<title>TITLE</title>
<style>
html {
	font-size: 120%;
}
section ul li {
	display: inline;
}
</style>
</head>
<body>
<header>
<h1>TITLE</h1>
</header>
divert(2)dnl
<article>
divert(5)dnl
</article>
<footer>
	<p><a href="PROJECT_ROOT_URL/PROJECT">PROJECT_NAME</a></p>
</footer>
</body>
</html>
divert(-1)
