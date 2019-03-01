"vim as man page viewer
runtime! ftplugin/man.vim

set autoindent
set autoread			" provede reload zmenenych souboru zpatky po make
set autowrite			" napred zapise zmenene soubory na disk pred spustenim make, nebo jineho prikazu
set completeopt-=preview	" zakaze preview okno pri omnikompletaci
set confirm
set history=5000
set ignorecase			" dobre pro vyhledavani, neni dobre pro ctags
set incsearch			" postupne hleda match jak se postupne pise
set listchars=tab:▷-,eol:⏎,space:·,trail:●,extends:»,precedes:<,conceal:⋯,nbsp:␣
set modelines=1			" kolik radku se ma prohledavat od zacatku souboru pro nastaveni editoru
set nowrap				" nezalamovat dlouhe radky
set omnifunc=syntaxcomplete#Complete	" vim rozhodne sam, jaky typ omnikompletace zvolit
set secure exrc			" zkusi natahnout .vimrc v pracovnim adresari (lokalni speciality)
set sessionoptions-=options	" neukladat nastaveni prepinacu do session (:mksession	---> Session.vim)
set showcmd				" zobrazi nedokonceny prikaz vpravo dole
set sidescroll=10		" pokus o lepsi horizontalni skrolovani
set smartcase			" pokud je alespon jedno pismeno upper case, pak je hledani case sensitive
set spelllang=cs
set tabpagemax=35		" vim -p `find -name ...` co se nevejde je dosazitelne pres :next or :last
set tagcase=match		" nastavi case sensitivitu pro tags
set undolevels=1000
set viminfo='100		" Marks will be remembered for the last N files you edited.
set wildignorecase		" Bomba! Zapne ignoraci case u jmena soubouru!
set wildmenu			" zapnuti rychle nabidky souboru (funguje i kurzor up/down)

function! Eatchar(pat)
	let c = nr2char(getchar(0))
	return (c =~ a:pat) ? '' : c
endfunc

cabbrev W w
cabbrev gr grep

nnoremap <c-k> :make<cr>

iabbrev :> --->
iabbrev <: <---

cnoremap <C-A> <Home>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>
nnoremap <c-s> <esc>:update<cr>
nnoremap <leader>1 :tabfirst<cr>
nnoremap <leader>4 :tabedit m4/
nnoremap <leader><c-t> :echo "Ctrl-t"<cr>
nnoremap <leader><leader><leader>v :source $MYVIMRC<cr>
nnoremap <leader><leader>s :split 
nnoremap <leader><leader>t :tabs<cr>
nnoremap <leader>I :tabedit inmat/
nnoremap <leader>M :marks<cr>
nnoremap <leader>b :buffers<cr>
nnoremap <leader>c :changes<cr>
nnoremap <leader>d ciw<c-r>=<c-r>"<cr><esc>
nnoremap <leader>h ciw<c-r>=printf('0x%x', <c-r>")<cr><esc>
nnoremap <leader>i :tabedit include/
nnoremap <leader>j :jumps<cr>
nnoremap <leader>m :map<cr>
nnoremap <leader>r :registers<cr>
nnoremap <leader>t :tabedit 
nnoremap <leader>u :undolist<cr>
nnoremap <leader>v :vsplit 
nnoremap <leader>z :abbreviate<cr>
nnoremap <silent><c-\><c-s> :set spell!<cr>
nnoremap <silent><c-l> :<c-u>nohlsearch<cr><c-l>
nnoremap <silent><leader><leader>v :tabedit $MYVIMRC<cr>
nnoremap <silent><leader>S :'{+1,'}-1 !sort<cr>
nnoremap <silent><leader>T :set list!<cr>
nnoremap <silent><leader>g :grep -nRH '<Bslash><lt><c-r><c-w><Bslash>>'<cr>
nnoremap <silent><leader>n :setlocal number!<cr>
nnoremap <silent><leader>q :cclose<cr>:lclose<cr>
nnoremap <silent><leader>s :'{+1,'}-1 sort<cr>
nnoremap <silent><leader>w :set wrap!<cr>
nnoremap <c-w>C :tabclose<cr>
noremap <f2> :lnext<cr>
noremap <silent><f3> :cprevious<cr>
noremap <silent><f4> :cnext<cr>
vnoremap X y/\V<C-R>=escape(@", '/\')<CR>

nnoremap <silent><C-h> :execute "vertical ptag " . expand("<cword>")<bar>:let @/ = expand("<cword>")<cr>

filetype plugin indent on

noremap <F1> <Esc>
imap <F1> <Esc>
