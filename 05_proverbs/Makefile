define m4
__HEADER([Josef Kubin], [2019/02/17], [if19_generators])
___USAGE([make h])
endef

VPATH = ..
PROJECT = $(notdir $(PWD))
DEBUG_FILE = debug.m4
NAVIG_FILE = lang.nav
#SOURCE = proverbs.mc
SOURCE = installfest_2019.mc

EMPTY =
SPACE = $(EMPTY) $(EMPTY)
COMMA = ,

LANG_FILES = $(wildcard lang_*.m4)
CODE_LIST  = $(patsubst lang_%.m4,%,$(LANG_FILES))
LANG_LIST  = $(subst $(SPACE),$(COMMA),$(CODE_LIST))

LANG_HTML  = $(patsubst lang_%.m4,html_$(PROJECT)_%.html,$(LANG_FILES))
LANG_XML   = $(patsubst lang_%.m4,xml_$(PROJECT)_%.xml,$(LANG_FILES))

SUFFIXES = c h json csv sh ini
M4_FILES = $(wildcard $(foreach suf,$(SUFFIXES),*.$(suf).m4))
TARGETS = $(M4_FILES:.m4=)

.SUFFIXES:
MAKEFLAGS += --no-builtin-rules


#:all	create all targets
.PHONY: all
all: trunc $(LANG_HTML) $(LANG_XML) $(TARGETS)

xml_$(PROJECT)_%.xml: master.m4 proverbs.m4 lang_%.m4 xml_proverbs.m4 $(SOURCE)
	m4 -DPROJECT=$(PROJECT) -DLANG_CODE=$* $^ > $@

html_$(PROJECT)_%.html: $(NAVIG_FILE) master.m4 proverbs.m4 lang_%.m4 html_proverbs.m4 $(SOURCE)
	m4 -DNAVIG_FILE=$(NAVIG_FILE) -DLANG_CODE=$* $(wordlist 2, $(words $^), $^) > $@

$(NAVIG_FILE): master.m4 nav.m4
	m4 -DPROJECT=$(PROJECT) -DLANG_LIST=$(LANG_LIST) $^ > $@

%: master.m4 proverbs.m4 lang_cz.m4 %.m4 $(SOURCE)
	m4 -DPROJECT=$(PROJECT) $^ > $@


#:trunc	truncate debug file
.PHONY: trunc
trunc:
	> $(DEBUG_FILE)


#:dup/duplic	prints duplicit records
.PHONY: duplic dup
duplic dup:
	@m4 duplic_test.m4 $(SOURCE)


#:cl/clean	removes generated files
.PHONY: clean cl
clean cl:
	$(RM) $(DEBUG_FILE) $(NAVIG_FILE) $(LANG_HTML) $(LANG_XML) $(TARGETS) *.scn


#:h/help	prints this text
.PHONY: help h
help h:
	@sed -n '/^#:/{s//\x1b[1;40;38;5;82mmake /;s/\t/\x1b[m /;p}' Makefile | sort	# ]]	<--- fix for m4
