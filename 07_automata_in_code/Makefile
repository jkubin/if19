define m4
__HEADER([Josef Kubin], [2019/02/25], [automata_in_code])
___DESCR([dnl
$ cat .vimrc
nnoremap <c-k> :make theory FILE=%<cr>
])
___POINT([faster development cycle; easier debugging])
___USAGE([make theory FILE=my_file.m4		<--- or open my_file.m4 and press Ctrl-k in Vim])
endef

VPATH = ..
.DEFAULT_GOAL = help

.PHONY: theory
theory: master.m4 $(FILE)
	m4 $+

.PHONY: help h
help h:
	@echo '[1;40;38;5;82m$$ vim -p *.m4[m	and press Ctrl-k'
