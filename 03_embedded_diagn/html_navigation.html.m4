# vim: set ft=m4:
# ^^^^ this is Vim modeline (to force M4 filetype)
__HEADER([Josef Kubin], [2019/02/17], [embedded_diagn])

#         _____CAPT
#        |    /
#      __V___/
# --->/ CAPT \
#     \______/
#
#         _____ITEM
#        |    /
#      __V___/
# --->/ ITEM \
#     \______/
#

# A → β
define([CAPT], [

	divert(0)dnl
		[<li><a href="#$1">$1</a></li>]
divert(2)dnl
undivert(3)dnl
	<section>
		[<h2 id="$1">$1</h2>]
		<ol>
divert(3)dnl
		</ol>
	</section>
divert(-1)
])

# A → β
define([ITEM], [

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
<nav>
	<ul>
divert(1)dnl
	</ul>
</nav>
divert(2)dnl
<article>
divert(4)dnl
</article>
<footer>
	<p><a href="PROJECT_ROOT_URL/PROJECT">PROJECT_NAME</a></p>
</footer>
</body>
</html>
divert(-1)
