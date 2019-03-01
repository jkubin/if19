divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/05/10], [array_code_smell])
___DESCR([an example of write-only code (not readable/editable)])
___POINT([How to NOT write M4 code. Avoid of it!])
___USAGE([m4 -DAUTO_ARRAY=$[$RANDOM & 0xff] array.m4])

define([SEQ], [ifelse([$1], [0], [[0x00, ]], [$0(decr($1))ifelse(eval($1 & 0xf), [0], [
])[0x]eval($1, 16, 2)[, ]])])

divert(0)dnl
[#]define [AUTO_ARRAY]		incr(AUTO_ARRAY)
[#]define [AUTO_ARRAY]		decr(AUTO_ARRAY)
[#define AUTO_ARRAY]		AUTO_ARRAY

/* wrong expansion */
#define [AUTO_ARRAY]		AUTO_ARRAY
[#]define AUTO_ARRAY		AUTO_ARRAY

#pragma romdata FRAM_DATA
unsigned char auto_array[[]] = {
SEQ(AUTO_ARRAY)
};
