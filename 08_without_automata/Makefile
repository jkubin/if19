define m4
__HEADER([Josef Kubin], [2019/03/01], [without_automata])
___USAGE([make h])
endef

DEBUG_FILE = debug.m4
VPATH = ..


#:all	create all targets
.PHONY: all
all: trunc without_automata

.PHONY: without_automata
without_automata: without_automata.m4 message.mc
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
