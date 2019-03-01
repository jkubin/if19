# vim: set ft=m4:
# ^^^^ this is Vim modeline (to force M4 filetype)
__HEADER([Josef Kubin], [2018/10/04], [proverbs])

#                                             ______JAN,FEB,MAR,...
#                                            |     /
#      ____________  JAN,FEB,MAR,...   ______V____/
# --->/ FIRST_ITEM \----------------->/ NEXT_ITEM \
#     \____________/                  \___________/
#

# β
define([FIRST_ITEM], [

	define([ANCHOR], $0_CODE[]_$1)

	divert($0_HDR)dnl
		<li><a href="[#]$0_CODE">$0_NAME</a></li>	<!-- $0_HDR -->
divert($0_ABC)dnl
	<section>
		<h2 id="$0_CODE">$0_NAME</h2>	<!-- $0_ABC -->
		<ul>
			<li><a href="[#]ANCHOR">$1</a></li>
divert($0_ABC_END)dnl
		</ul>
divert($0_SCN)dnl
		<ol>
			<li id="ANCHOR">$2</li>	<!-- $0_SCN -->
divert($0_SCN_END)dnl
		</ol>
	</section>
divert(-1)

	# transition to the next node
	define([$0], defn([NEXT_ITEM]))
])

# β
define([NEXT_ITEM], [

	ifelse(ANCHOR, $0_CODE[]_$1, [
		divert($0_SCN)dnl
			<li>$2</li>
divert(-1)
	], [
		define([ANCHOR], $0_CODE[]_$1)

		divert($0_ABC)dnl
			<li><a href="[#]ANCHOR">$1</a></li>
divert($0_SCN)dnl
			<li id="ANCHOR">$2</li>
divert(-1)
	])
])

# A → β
define([JANUARY],	defn([FIRST_ITEM]))
define([FEBRUARY],	defn([FIRST_ITEM]))
define([MARCH],		defn([FIRST_ITEM]))
define([APRIL],		defn([FIRST_ITEM]))
define([MAY],		defn([FIRST_ITEM]))
define([JUNE],		defn([FIRST_ITEM]))
define([JULY],		defn([FIRST_ITEM]))
define([AUGUST],	defn([FIRST_ITEM]))
define([SEPTEMBER],	defn([FIRST_ITEM]))
define([OCTOBER],	defn([FIRST_ITEM]))
define([NOVEMBER],	defn([FIRST_ITEM]))
define([DECEMBER],	defn([FIRST_ITEM]))

define([SPRING],	defn([FIRST_ITEM]))
define([SUMMER],	defn([FIRST_ITEM]))
define([AUTUMN],	defn([FIRST_ITEM]))
define([WINTER],	defn([FIRST_ITEM]))

define([FARM],		defn([FIRST_ITEM]))

# create a piece of HTML code
define([BOOK_NAME], [<b>]defn([BOOK_NAME])[</b>])

# description
define([___DESCR], [define([DESCRIPTION], [<p>$1</p>])])

# description,  append if duplicit
#define([___DESCR], [define([DESCRIPTION], defn([DESCRIPTION])[<p>$1</p>
#])])

# define auxiliary symbol for navigation
define(.LANG_CODE)

m4wrap([
	divert(0)dnl
<!DOCTYPE html>
<!-- DO_NOT_EDIT -->
<html>
<head>
<meta charset="UTF-8">
<title>AUTHOR</title>
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
dnl[]include([lang.nav])dnl	<--- do not hardcode filenames!
include(NAVIG_FILE)dnl
dnl[]sinclude(NAVIG_FILE)dnl	<--- silent include (no error if no file)
dnl[]undivert(NAVIG_FILE)dnl	<--- no macro expansion from file
<h1>AUTHOR</h1>
DESCRIPTION
</header>
<nav>
	<h2>MONTHS</h2>
	<ul>
divert(AFTER_MONTHS)dnl
	</ul>
	<h2>SEASONS</h2>
	<ul>
divert(AFTER_SEASONS)dnl
	</ul>
	<h2>THE_OTHERS</h2>
	<ul>
divert(CLOSE_NAVIG)dnl
	</ul>
</nav>
<article>
divert(LAST_BUFFER)dnl
</article>
<footer>
	<p><a href="PROJECT_ROOT_URL">PROJECT_NAME</a></p>
</footer>
</body>
</html>
])
