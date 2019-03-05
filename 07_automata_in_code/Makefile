define m4
__HEADER([Josef Kubin], [2019/02/25], [automata_in_code])
___DESCR([dnl
$ cat .vimrc
nnoremap <c-k> :make FILE=%<cr>
])
___POINT([faster development cycle; easier debugging])
___USAGE([make FILE=my_file.m4		<--- or open my_file.m4 and press Ctrl-k in Vim])
endef

VPATH = ..

.PHONY: test
test: master.m4 $(FILE)
	m4 $+
