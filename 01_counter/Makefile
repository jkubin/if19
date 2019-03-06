define m4
__HEADER([Josef Kubin], [2019/02/24], [counter])
___USAGE([make h])
endef

DEBUG_FILE = debug.m4
VPATH = ..

.SUFFIXES:
MAKEFLAGS += --no-builtin-rules


#:all	create all targets
.PHONY: all
all: trunc test

.PHONY: test
test: master.m4 counter.m4
	m4 $^


#:trunc	truncate debug file
.PHONY: trunc
trunc:
	> $(DEBUG_FILE)


#:cl/clean	remove generated files
.PHONY: clean cl
clean cl:
	$(RM) $(DEBUG_FILE)


#:h/help	print this text
.PHONY: help h
help h:
	@sed -n '/^#:/{s//\x1b[1;40;38;5;82mmake /;s/\t/\x1b[m /;p}' Makefile | sort	# ]]	<--- fix for m4
