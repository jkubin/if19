define m4
__HEADER([Josef Kubin], [2019/02/17], [if19_generators])
___USAGE([make h])
endef

VPATH = ..
PROJECT = $(notdir $(PWD))
DEBUG_FILE = debug.m4
#SOURCE = embedded_diagn.mc
SOURCE = installfest_2019.mc

SUFFIXES = c h xml json html csv ini
M4_FILES = $(wildcard $(foreach suf,$(SUFFIXES),*.$(suf).m4))
TARGETS = $(M4_FILES:.m4=)

.SUFFIXES:
MAKEFLAGS += --no-builtin-rules


#:all	create all targets
.PHONY: all
all: trunc $(TARGETS)

%: master.m4 %.m4 $(SOURCE)
	m4 -DPROJECT=$(PROJECT) $^ > $@


#:trunc	truncate debug file
.PHONY: trunc
trunc:
	> $(DEBUG_FILE)


#:cl/clean	remove generated files
.PHONY: clean cl
clean cl:
	$(RM) $(DEBUG_FILE) $(TARGETS)


#:h/help	print this text
.PHONY: help h
help h:
	@sed -n '/^#:/{s//\x1b[1;40;38;5;82mmake /;s/\t/\x1b[m /;p}' Makefile | sort	# ]]	<--- fix for m4
