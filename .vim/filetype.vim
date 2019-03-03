" Vim filetype file
if exists("g:did_load_filetypes")
	finish
endif

"let g:did_load_filetypes = 1	<--- nesmi se nastavit tady, nastavi se pozdeji v jinem skriptu
"
"/usr/share/vim/vim80/doc/filetype.txt	<--- manual (proc strcit do ~/.vim/filetype.vim)

" my Vimscript file settings {{{
augroup my_filetypedetect
	autocmd!


	autocmd QuickFixCmdPost [^l]* nested cwindow
	autocmd QuickFixCmdPost    l* nested lwindow
	autocmd BufNewFile *.* silent! execute '0r ~/.vim/templates/skeleton.'.expand("<afile>:e") | call <SID>CustomizeTemplate()
	autocmd BufNewFile [Mm]akefile silent! execute '0r ~/.vim/templates/'.expand("<afile>") | call <SID>CustomizeTemplate()

augroup END
" }}}


function! <SID>CustomizeTemplate()
	" umaze posledni prazdny radek
	execute "$d"
	normal 1G

	silent execute "%s/skeletonVIM_CREATION_DATE/" . strftime("%Y\\/%m\\/%d") . "/ge"
	silent execute "%s/skeletonVIM_CREATION_DTIME/" . strftime("%Y\\/%m\\/%d %H:%M") . "/ge"
	silent execute "%s/skeletonVIM_CREATION_TIME/" . strftime("%H:%M") . "/ge"
	silent execute "%s/skeletonVIM_DIRECTORY/" . expand("%:p:h:t") . "/ge"
	silent execute "%s/skeletonVIM_FILE_BASE/" . expand("%:t:r") . "/ge"
	silent execute "%s/skeletonVIM_FILE_EXT/" . expand("%:e") . "/ge"
	silent execute "%s/skeletonVIM_FILE_M4_MACRO/" . toupper(expand("%:t:r")) . "/ge"
	silent execute "%s/skeletonVIM_FILE_MACRO/__" . toupper(expand("%:t:r") . "_" . expand("%:e")) . "/ge"
	silent execute "%s/skeletonVIM_FILE_NAME/" . expand("%:t") . "/ge"

	"execute "%s/skeletonVIM_USER_NAME/" . $USERNAME . "/ge"
	normal G
endfunction
