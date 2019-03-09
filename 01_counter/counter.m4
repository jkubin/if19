__HEADER([Josef Kubin], [2019/02/24], [counter])
___DESCR([an example, how to use my counter])
___USAGE([m4 ../master.m4 counter.m4])

# define counter
define([COUNTER], defn([COUNT_UP]))

# init counter
COUNTER(10)

# use counter
divert(0)dnl
COUNTER
COUNTER COUNTER COUNTER COUNTER
