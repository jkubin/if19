define m4
__HEADER([Josef Kubin], [2019/02/17], [if19_generators])
___USAGE([make h])
endef

TARGET = array.c
DEBUG_FILE = debug.m4

.SUFFIXES:


#:all	create all targets
.PHONY: all
all: trunc $(TARGET)

.PHONY: $(TARGET)
$(TARGET): array.m4
	m4 -DAUTO_ARRAY=$$[$$RANDOM & 0xff] $< > $@


#:trunc	truncate debug file
.PHONY: trunc
trunc:
	> $(DEBUG_FILE)


#:cl/clean	removes generated files
.PHONY: clean cl
clean cl:
	$(RM) $(DEBUG_FILE) $(TARGET)


#:h/help	prints this text
.PHONY: help h
help h:
	@sed -n '/^#:/{s//\x1b[1;40;38;5;82mmake /;s/\t/\x1b[m /;p}' Makefile | sort	# ]]	<--- fix for m4
