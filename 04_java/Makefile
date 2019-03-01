define m4
__HEADER([Josef Kubin], [2018/10/27], [java])
___DESCR([java source code generator])
___POINT([comparison two source code generators: XSLT versus M4])
___USAGE([make h])
endef

VPATH = ..
DEBUG_FILE = debug.m4

.SUFFIXES:
MAKEFLAGS += --no-builtin-rules


#:all	create all targets
.PHONY: all
all: trunc java_by_m4.java java_by_xslt.java

java_by_xslt.java: java_by_xslt.xslt config.xml
	xsltproc $^ > $@

%: master.m4 buffers.m4 %.m4 config.mc
	m4 $^ > $@


#:trunc	truncate debug file
.PHONY: trunc
trunc:
	> $(DEBUG_FILE)


#:cl/clean	removes generated files
.PHONY: clean cl
clean cl:
	$(RM) *.java


#:h/help	prints this text
.PHONY: help h
help h:
	@sed -n '/^#:/{s//\x1b[1;40;38;5;82mmake /;s/\t/\x1b[m /;p}' Makefile | sort	# ]]	<--- fix for m4
