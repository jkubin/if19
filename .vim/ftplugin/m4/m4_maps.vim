" Vim M4

iabbrev <buffer> ang ANGLE()<left><c-r>=Eatchar('.')<cr>
iabbrev <buffer> ax AXIOM(`', `%%%')<c-o>T(<right><c-r>=Eatchar('.')<cr>
iabbrev <buffer> cq changequote([,])<c-r>=Eatchar('.')<cr>
iabbrev <buffer> d0 divert(0)dnl<c-r>=Eatchar('\s')<cr>
iabbrev <buffer> db debugmode([])<left><left><c-r>=Eatchar('.')<cr>
iabbrev <buffer> dbf debugfile([])<left><left><c-r>=Eatchar('.')<cr>
iabbrev <buffer> dbm debugmode([])<left><left><c-r>=Eatchar('.')<cr>
iabbrev <buffer> dc decr($1)
iabbrev <buffer> dddd debugfile(`debug.m4')debugmode(`taeqc')<cr>debugmode<esc>
iabbrev <buffer> ddd debugfile([debug.m4])debugmode([taeqc])<cr>debugmode<esc>
iabbrev <buffer> dd debugfile([debug.m4])debugmode([taeq])<cr>debugmode<esc>
iabbrev <buffer> dec decr($1)
iabbrev <buffer> de define([], [%%%])<c-o>T(<right><c-r>=Eatchar('.')<cr>
iabbrev <buffer> dee define(`', `%%%')<c-o>T(<right><c-r>=Eatchar('.')<cr>
iabbrev <buffer> def define([], [<cr><tab>%%%<cr><c-d>])<up><up><c-o>f]<c-r>=Eatchar('.')<cr>
iabbrev <buffer> deff define([])<c-o>T(<right><c-r>=Eatchar('.')<cr>
iabbrev <buffer> defi define([])<c-o>T(<right><c-r>=Eatchar('.')<cr>
iabbrev <buffer> defn defn([])<left><left><c-r>=Eatchar('.')<cr>
iabbrev <buffer> df <left>defn(<right><right>)<left><left><c-r>=Eatchar('.')<cr>
iabbrev <buffer> dfn defn([])<left><left><c-r>=Eatchar('.')<cr>
iabbrev <buffer> di0 divert(0)dnl<c-r>=Eatchar('\s')<cr>
iabbrev <buffer> di divert()<left><c-r>=Eatchar('.')<cr>
iabbrev <buffer> dii divert(-1)<c-r>=Eatchar('\s')<cr>
iabbrev <buffer> dio divert(0)dnl<c-r>=Eatchar('\s')<cr>
iabbrev <buffer> div divert()<left><c-r>=Eatchar('.')<cr>
iabbrev <buffer> divn divnum<c-r>=Eatchar('\s')<cr>
iabbrev <buffer> dn dnl
iabbrev <buffer> dnu divert(-1)<c-r>=Eatchar('\s')<cr>
iabbrev <buffer> du dumpdef([])<left><left><c-r>=Eatchar('.')<cr>
iabbrev <buffer> dum dumpdef([])<left><left><c-r>=Eatchar('.')<cr>
iabbrev <buffer> dump dumpdef([])<left><left><c-r>=Eatchar('.')<cr>
iabbrev <buffer> dvn divnum<c-r>=Eatchar('\s')<cr>
iabbrev <buffer> er errprint([])<left><left><c-r>=Eatchar('.')<cr>
iabbrev <buffer> erp errprint([])<left><left><c-r>=Eatchar('.')<cr>
iabbrev <buffer> err errprint([])<left><left><c-r>=Eatchar('.')<cr>
iabbrev <buffer> es esyscmd([])<left><left><c-r>=Eatchar('.')<cr>
iabbrev <buffer> esy esyscmd([])<left><left><c-r>=Eatchar('.')<cr>
iabbrev <buffer> esys esyscmd([])<left><left><c-r>=Eatchar('.')<cr>
iabbrev <buffer> eva eval([], [%%%])<c-o>T(<right><c-r>=Eatchar('.')<cr>
iabbrev <buffer> ev eval([])<c-o>T(<right><c-r>=Eatchar('.')<cr>
iabbrev <buffer> evv eval([], [%%%])<c-o>T(<right><c-r>=Eatchar('.')<cr>
iabbrev <buffer> exi m4exit(1)<c-r>=Eatchar('.')<cr>
iabbrev <buffer> fi __file__:<c-r>=Eatchar('\s')<cr>
iabbrev <buffer> fil __file__:<c-r>=Eatchar('\s')<cr>
iabbrev <buffer> fm format([%], %%%)<c-o>T(<right><right><c-r>=Eatchar('.')<cr>
iabbrev <buffer> fmt format([%], %%%)<c-o>T(<right><right><c-r>=Eatchar('.')<cr>
iabbrev <buffer> gn __gnu__:<c-r>=Eatchar('\s')<cr>
iabbrev <buffer> id index([], [%%%])<c-o>T(<right><c-r>=Eatchar('.')<cr>
iabbrev <buffer> idx index([], [%%%])<c-o>T(<right><c-r>=Eatchar('.')<cr>
iabbrev <buffer> ifc ifelse([])<left><left><cr><esc>
iabbrev <buffer> ifdd ifdef(`', `%%%', `%%%')<c-o>T(<right><c-r>=Eatchar('.')<cr>
iabbrev <buffer> ifde ifdef([], [%%%], [%%%])<c-o>T(<right><c-r>=Eatchar('.')<cr>
iabbrev <buffer> ifd ifdef([], [%%%])<c-o>T(<right><c-r>=Eatchar('.')<cr>
iabbrev <buffer> ifee ifelse(`', `%%%', `%%%', `%%%')<c-o>T(<right><c-r>=Eatchar('.')<cr>
iabbrev <buffer> ife ifelse([$], [%%%], [%%%], [%%%])<c-o>F$<right><c-r>=Eatchar('.')<cr>
iabbrev <buffer> ifel ifelse(<cr>[$1], [%%%], [%%%],<cr>[%%%$1], [%%%], [%%%],<cr>[%%%$1], [%%%], [%%%]<cr>[%%%]<cr>)<left><c-o>%<right><right><c-r>=Eatchar('.')<cr>
iabbrev <buffer> iff ifelse([$], [%%%], [%%%])<c-o>F$<right><c-r>=Eatchar('.')<cr>
iabbrev <buffer> inc incr($1)
iabbrev <buffer> incl include([])<left><left><c-r>=Eatchar('.')<cr>
iabbrev <buffer> ind indir([])<left><left><c-r>=Eatchar('.')<cr>
iabbrev <buffer> le len([])<left><left><c-r>=Eatchar('.')<cr>
iabbrev <buffer> lin __line__:<c-r>=Eatchar('\s')<cr>
iabbrev <buffer> ln __line__:<c-r>=Eatchar('\s')<cr>
iabbrev <buffer> m4ex m4exit(1)<c-r>=Eatchar('.')<cr>
iabbrev <buffer> mk maketemp([])<left><left><c-r>=Eatchar('.')<cr>
iabbrev <buffer> mkt maketemp([])<left><left><c-r>=Eatchar('.')<cr>
iabbrev <buffer> mw m4wrap([<cr><cr>])<up><tab><c-r>=Eatchar('.')<cr>
iabbrev <buffer> mx m4exit(1)<c-r>=Eatchar('.')<cr>
iabbrev <buffer> os2 __os2__:<c-r>=Eatchar('\s')<cr>
iabbrev <buffer> pa patsubst([$], [%%%], [%%%])<c-o>T$<c-r>=Eatchar('\s')<cr>
iabbrev <buffer> pat patsubst([$], [%%%], [%%%])<c-o>T$<c-r>=Eatchar('\s')<cr>
iabbrev <buffer> pd popdef([])<c-o>T(<right><c-r>=Eatchar('.')<cr>
iabbrev <buffer> poo popdef([])<c-o>T(<right><c-r>=Eatchar('.')<cr>
iabbrev <buffer> popd popdef(<cr><tab>[%%%],<cr>[%%%],<cr>[%%%],<cr><c-d>)<up><up><up><c-r>=Eatchar('.')<cr>
iabbrev <buffer> pop popdef(<cr><tab>[%%%],<cr>[%%%],<cr>[%%%],<cr><c-d>)<up><up><up><c-r>=Eatchar('.')<cr>
iabbrev <buffer> popp popdef([])<c-o>T(<right><c-r>=Eatchar('.')<cr>
iabbrev <buffer> push pushdef([], [%%%])<c-o>T(<right><c-r>=Eatchar('.')<cr>
iabbrev <buffer> pus pushdef([])<c-o>T(<right><c-r>=Eatchar('.')<cr>
iabbrev <buffer> puu pushdef([])<c-o>T(<right><c-r>=Eatchar('.')<cr>
iabbrev <buffer> reg regexp([$], [%%%], [%%%])<c-o>T$<c-r>=Eatchar('.')<cr>
iabbrev <buffer> rlc RULE_COMP(`', `%%%', `%%%')<c-o>T(<right><c-r>=Eatchar('.')<cr>
iabbrev <buffer> rle RULE(`', `%%%', `%%%')<c-o>T(<right><c-r>=Eatchar('.')<cr>
iabbrev <buffer> rll RULE(`', `%%%', `%%%')<c-o>T(<right><c-r>=Eatchar('.')<cr>
iabbrev <buffer> rl RULE(`', `%%%')<c-o>T(<right><c-r>=Eatchar('.')<cr>
iabbrev <buffer> ruu RULE(`', `%%%', `%%%')<c-o>T(<right><c-r>=Eatchar('.')<cr>
iabbrev <buffer> sc syscmd([])<left><left><c-r>=Eatchar('.')<cr>
iabbrev <buffer> sh shift($@)
iabbrev <buffer> sin sinclude([])<left><left><c-r>=Eatchar('.')<cr>
iabbrev <buffer> sub substr([$], [%%%], [%%%])<c-o>T$<c-r>=Eatchar('.')<cr>
iabbrev <buffer> su substr([$], [%%%], [%%%])<c-o>T$<c-r>=Eatchar('.')<cr>
iabbrev <buffer> syc syscmd([])<left><left><c-r>=Eatchar('.')<cr>
iabbrev <buffer> sys sysval<c-r>=Eatchar('.')<cr>
iabbrev <buffer> sysv sysval<c-r>=Eatchar('.')<cr>
iabbrev <buffer> sy syscmd([])<left><left><c-r>=Eatchar('.')<cr>
iabbrev <buffer> ti TITLE(`')<c-o>T(<right><c-r>=Eatchar('.')<cr>
iabbrev <buffer> tof traceoff<c-r>=Eatchar('.')<cr>
iabbrev <buffer> ton traceon([])<c-o>T(<right><c-r>=Eatchar('.')<cr>
iabbrev <buffer> troff traceoff([])<c-o>T(<right><c-r>=Eatchar('.')<cr>
iabbrev <buffer> tron traceon([], [%%%], [%%%])<c-o>T(<right><c-r>=Eatchar('.')<cr>
iabbrev <buffer> tr translit([$], [%%%])<c-o>T$<c-r>=Eatchar('.')<cr>
iabbrev <buffer> ud undivert()<left><c-r>=Eatchar('.')<cr>
iabbrev <buffer> undef undefine([])<left><left><c-r>=Eatchar('.')<cr>
iabbrev <buffer> unde undefine([])<left><left><c-r>=Eatchar('.')<cr>
iabbrev <buffer> undi undivert()<left><c-r>=Eatchar('.')<cr>
iabbrev <buffer> und undivert()<left><c-r>=Eatchar('.')<cr>
iabbrev <buffer> une undefine([])<left><left><c-r>=Eatchar('.')<cr>
iabbrev <buffer> ux __unix__<c-r>=Eatchar('\s')<cr>
iabbrev <buffer> va VARS(`')<c-o>T(<right><c-r>=Eatchar('.')<cr>
iabbrev <buffer> wi __windows__<c-r>=Eatchar('\s')<cr>
iabbrev <buffer> wr m4wrap([<cr><cr>])<up><tab><c-r>=Eatchar('.')<cr>

setlocal errorformat^=m4:%f:%l:%m
setlocal matchpairs+=`:'
setlocal grepprg=grep\ -nRH\ $*\ --include\ '*.m4'\ .

nnoremap <buffer> <silent><leader>f :%! perl -pe 'use encoding utf8;s/\s+,/,/g;s/^(\[.., )(\[[^]]*\],)\s*(\[[^]]*\],)\s*(\[[^]]*\])/sprintf("\%s\%-35s\%-43s\%s", $1, $2, $3, $4)/e'<cr>g;g;
nnoremap <buffer> <silent><leader>F :%! perl -pe 'use encoding utf8;s/\s+,/,/g;s/^(\[.., )(\[[^]]*\],)\s*(\[[^]]*\],)\s*(\[[^]]*\])/sprintf("\%s\%-35s\%-63s\%s", $1, $2, $3, $4)/e'<cr>g;g;

inoremap <buffer> ;; <c-o>/%%%<cr><del><del><del>
