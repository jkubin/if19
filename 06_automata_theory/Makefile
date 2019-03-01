define m4
__HEADER([Josef Kubin], [2019/02/23], [automata_theory])
___POINT([faster development cycle; easier debugging])
endef

DEBUG_FILE = debug.m4
SYMBOLS = symbols.mc
VPATH = ..


#:all	run opened file in Vim
.PHONY: all
all: trunc theory
	@:


.PHONY: theory
theory: master.m4 $(FILE) $(SYMBOLS)
	m4 $+

$(SYMBOLS):
	touch $@


#:bin	generate binary number symbols
.PHONY: bin
bin:
	> $(SYMBOLS)
	while :; do echo 'MOD_THREE('$$[$$RANDOM % 2]')' >> $(SYMBOLS); done


#:dec	generate decimal number symbols
.PHONY: dec
dec:
	> $(SYMBOLS)
	while :; do echo 'MOD_THREE('$$[$$RANDOM % 10]')' >> $(SYMBOLS); done


#:cl/clean	remove generated files
.PHONY: clean cl
clean cl:
	$(RM) $(DEBUG_FILE) $(SYMBOLS)

#:trunc	truncate debug file
.PHONY: trunc
trunc:
	> $(DEBUG_FILE)


#:h/help	print this text
.PHONY: help h
help h:
	@sed -n '/^#:/{s//\x1b[1;40;38;5;82mmake /;s/\t/\x1b[m /;p}' Makefile | sort	# ]]	<--- fix for m4
