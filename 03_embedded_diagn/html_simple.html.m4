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
undivert(1)dnl
	<section>
		<h2>[$1]</h2>
		<ol>
divert(1)dnl
		</ol>
	</section>
divert(-1)
])

# A → β
define([ITEM], [

	divert(0)dnl
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
</head>
<body>
<header>
<h1>TITLE</h1>
</header>
<article>
divert(2)dnl
</article>
<footer>
	<p><a href="PROJECT_ROOT_URL/PROJECT">PROJECT_NAME</a></p>
</footer>
</body>
</html>
divert(-1)
