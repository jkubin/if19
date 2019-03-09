divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/05/10], [array])
___DESCR([generates initial hex array for an external memory])
___POINT([left recursion (not recommended for hundreds megabytes of data))])
___USAGE([m4 -DAUTO_ARRAY=$[$RANDOM & 0xff] array.m4])

define([SEQ], [

	ifelse([$1], [0], [

		# print the first number
		divert(0)dnl
0x00, dnl
divert(-1)
	], [
		# left recursion
		$0(decr($1))

		divert(0)dnl
ifelse(eval($1 & 0xf), [0], [
])dnl
[0x]eval($1, 16, 2)[, ]dnl
divert(-1)
	])
])

divert(0)dnl
/*
 * various examples of expansion
 */

[#]define [AUTO_ARRAY]		incr(AUTO_ARRAY)
[#]define [AUTO_ARRAY]		decr(AUTO_ARRAY)
[#define AUTO_ARRAY]		AUTO_ARRAY
#define [AUTO_ARRAY]		AUTO_ARRAY
[#]define AUTO_ARRAY		AUTO_ARRAY

#pragma romdata FRAM_DATA
unsigned char auto_array[[]] = {
divert(1)
};
divert(-1)

---- 8< -----
# usually in different file
SEQ(AUTO_ARRAY)
