define m4
__HEADER([Josef Kubin], [2019/02/23], [automata_theory])
___DESCR([dnl
$ cat .vimrc
nnoremap <c-k> :make theory FILE=%<cr>
])
___POINT([faster development cycle; easier debugging])
___USAGE([make theory FILE=my_file.m4		<--- or open my_file.m4 and press Ctrl-k in Vim])
endef

VPATH = ..
SYMBOLS = symbols.mc
DEBUG_FILE = debug.m4
.DEFAULT_GOAL = help


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


#:h/help	prints this text
.PHONY: help h
help h:
	@echo '[1;40;38;5;82m$$ vim -p *.m4[m	and press Ctrl-k'

