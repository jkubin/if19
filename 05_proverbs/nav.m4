__HEADER([Josef Kubin], [2019/02/14], [proverbs])
___DESCR([create navigation in M4 for inclusion to other script])

# define counter for buffers
# A → β
define([BUFFER_IDX], defn([COUNT_UP]))

# init counter
BUFFER_IDX(1)

# order is significant for navigation bar
define([IDX_cz], BUFFER_IDX)
define([IDX_sk], BUFFER_IDX)
define([IDX_en], BUFFER_IDX)
define([IDX_pl], BUFFER_IDX)
define([IDX_fi], BUFFER_IDX)
define([IDX_hu], BUFFER_IDX)
define([IDX_de], BUFFER_IDX)
define([IDX_ru], BUFFER_IDX)
define([IDX_uk], BUFFER_IDX)
define([IDX_fr], BUFFER_IDX)
define([IDX_it], BUFFER_IDX)
define([IDX_hi], BUFFER_IDX)
define([IDX_mn], BUFFER_IDX)
define([IDX_ja], BUFFER_IDX)
define([IDX_zh_CN], BUFFER_IDX)
define([IDX_so], BUFFER_IDX)
define([IDX_sw], BUFFER_IDX)
define([IDX_yi], BUFFER_IDX)
define([IDX_fa], BUFFER_IDX)

# A → β
define([AUX], [

	divert(IDX_$1)dnl
[ifdef([.$1], [<b style="color:red">LANG_$1</b>], [<a href="html_$2_$1.html">LANG_$1</a>]) ($1) |]
divert(-1)
])

# A → β
define([NAV], [

	ifelse([$1], [], [], [

		AUX($1, PROJECT)

		$0(shift($@))dnl
	])
])

NAV(LANG_LIST)
