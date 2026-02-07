let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <C-R>	 <Plug>snipMateShow
imap <S-Tab> <Plug>snipMateBack
inoremap <silent> <Plug>snipMateShow =snipMate#ShowAvailableSnips()
inoremap <silent> <Plug>snipMateBack =snipMate#BackwardsSnippet()
inoremap <silent> <Plug>snipMateTrigger =snipMate#TriggerSnippet(1)
inoremap <silent> <Plug>snipMateNextOrTrigger =snipMate#TriggerSnippet()
imap <C-G>S <Plug>ISurround
imap <C-G>s <Plug>Isurround
imap <C-S> <Plug>Isurround
cnoremap <C-^> <Nop>
cnoremap <C-L> <Nop>
cnoremap <C-Y> <Nop>
cnoremap <C-K> <Nop>
cnoremap <C-Q> <Nop>
cnoremap <C-U> <End>
cnoremap <C-D> <Del>
cnoremap <C-B> <Left>
cnoremap <C-F> <Right>
cnoremap <C-E> <End>
cnoremap <C-A> <Home>
cnoremap <C-N> <Down>
cnoremap <C-P> <Up>
inoremap <C-L> 
inoremap <C-D> 
inoremap <C-F> 
inoremap <C-]> 
inoremap <C-U> bveUea
inoremap <silent> <C-Y> =editing#LookUpwards()
inoremap <C-C> =eval(input('Calculate: '))
inoremap <C-K> 
cmap <Right> <Nop>
cmap <Left> <Nop>
cmap <Down> <Nop>
cmap <Up> <Nop>
cmap <BS> <Nop>
imap <Right> <Nop>
imap <Left> <Nop>
imap <Down> <Nop>
imap <Up> <Nop>
imap <BS> <Nop>
nnoremap <silent>  :tabclose
xmap 	 <Plug>snipMateVisual
smap 	 <Plug>snipMateNextOrTrigger
nnoremap 	 
nnoremap <silent>  :nohlsearch
nnoremap  :WinResizerStartResize
vnoremap  
nmap <silent>  :call signature#GotoMark( "next", "line", "pos" )
nnoremap <silent>  :tabnew
nnoremap  lh
noremap  <Nop>
nnoremap   viwlh
nmap <silent> '[ :call signature#GotoMark( "prev", "line", "alpha" )
nmap <silent> '] :call signature#GotoMark( "next", "line", "alpha" )
nnoremap 'dd S
vnoremap * y :execute ":let @/=@\"":set hlsearch
nnoremap * *N
vnoremap <silent> -g :call ag#Ag(0)
nnoremap <silent> -g :call ag#Ag(1)
vnoremap -tr :call translator#Translate_selected(1)
nnoremap <silent> -K :call man#ShowManPage()
nnoremap <silent> -mr :SignatureRefresh
noremap -r :QuickRun
nnoremap <silent> -hl :GitGutterLineHighlightsToggle
nnoremap <silent> -hf :GitGutterFold
nnoremap <silent> -hs :GitGutterStageHunk
nnoremap <silent> -hu :GitGutterUndoHunk
nnoremap <silent> -hp :GitGutterPreviewHunk
nnoremap <silent> -hN :GitGutterPrevHunk
nnoremap <silent> -hn :GitGutterNextHunk
nnoremap <silent> -hg :GitGutter
nnoremap <silent> -bb :BufExplorerHorizontalSplit
vnoremap -6p :'<,'>!base64 --decode
vnoremap -64 y :echo system('base64 --decode', @")
nnoremap -de /^\n\{2}
nnoremap <silent> -= :call editing#AlignAssignments()
nmap <silent> -pa :call editing#GoToParentBrace()
nnoremap -q q
nnoremap -ex Q
nnoremap -wp h
nnoremap -wn l
nnoremap <silent> -ts :call editing#ReplaceTabsWithSpaces()
nnoremap <silent> -ss :call editing#RemoveTrailingSpaces()
nnoremap <silent> -tp :tabprevious
nnoremap <silent> -tn :tabnext
nnoremap -fd :emenu Folding.	
nnoremap -sp :emenu SpellLang.	
nnoremap -ew :emenu Encoding.Write.	
nnoremap -er :emenu Encoding.Read.	
nnoremap <silent> -bd :bdelete
nnoremap <silent> -bp :bprevious
nnoremap <silent> -bn :bnext
nnoremap <silent> -sv :source $HOME/.vimrc:nohlsearch
nnoremap <silent> -ev :vsplit $HOME/.vimrc
nnoremap <silent> -hh :setlocal list!
nnoremap <silent> -tw :let &textwidth = &textwidth ># 0 ? 0 : 80 :echo 'textwidth: ' . &textwidth
nnoremap / /\v
nnoremap <silent> ;; :call editing#ToggleSemicolonOnEndOfLine()
nnoremap ? ?\v
nnoremap K <Nop>
nnoremap Q <Nop>
xmap S <Plug>VSurround
vnoremap T g_
nnoremap T g_
nnoremap V Vlh
vnoremap Y ^
nnoremap Y ^
nmap <silent> [= :call signature#GotoMarker( "prev", "any" )
nmap <silent> [- :call signature#GotoMarker( "prev", "same" )
nmap <silent> [` :call signature#GotoMark( "prev", "spot", "pos" )
nmap <silent> [' :call signature#GotoMark( "prev", "line", "pos" )
nnoremap <silent> [q :cprevious
nnoremap <silent> [e :lprevious
nmap <silent> ]= :call signature#GotoMarker( "next", "any" )
nmap <silent> ]- :call signature#GotoMarker( "next", "same" )
nmap <silent> ]` :call signature#GotoMark( "next", "spot", "pos" )
nnoremap <silent> ]q :cnext
nnoremap <silent> ]e :lnext
nmap <silent> `[ :call signature#GotoMark( "prev", "spot", "alpha" )
nmap <silent> `] :call signature#GotoMark( "next", "spot", "alpha" )
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
xmap gx <Plug>(open-word-under-cursor)
nmap gx <Plug>(open-word-under-cursor)
vnoremap <silent> gC :call comment#CommentLines(1)
nnoremap <silent> gC :call comment#CommentLines(1)
vnoremap <silent> gc :call comment#CommentLines(0)
nnoremap <silent> gc :call comment#CommentLines(0)
xmap gG <Plug>(open-url-search-google)
nmap gG <Plug>(open-url-search-google)
xmap gW <Plug>(open-url-search-wikipedia)
nmap gW <Plug>(open-url-search-wikipedia)
xmap g <Plug>(open-url-search)
nmap g <Plug>(open-url-search)
xmap gB <Plug>(open-url-browser)
nmap gB <Plug>(open-url-browser)
xmap gS <Plug>VgSurround
onoremap kj 
nmap <silent> m :call signature#Input()
nnoremap q <Nop>
vnoremap r <Nop>
vnoremap tr :call translator#Translate_selected()
nnoremap v vlh
nnoremap <silent> yF :call myNetrw#SaveFileName(1)
nnoremap <silent> yf :call myNetrw#SaveFileName(0)
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap yY vg_"+yvg_"*y
smap <S-Tab> <Plug>snipMateBack
xnoremap <Plug>(open-word-under-cursor) <ScriptCmd>vim9.Open(getregion(getpos('v'), getpos('.'), { type: mode() })->join())
nnoremap <Plug>(open-word-under-cursor) <ScriptCmd>vim9.Open(GetWordUnderCursor())
xnoremap <Plug>(open-url-search-wikipedia) :OpenSearchURL wikipedia =open_url#get_selection()
nnoremap <Plug>(open-url-search-wikipedia) :OpenSearchURL wikipedia <cword>
xnoremap <Plug>(open-url-search-google) :OpenSearchURL google =open_url#get_selection()
nnoremap <Plug>(open-url-search-google) :OpenSearchURL google <cword>
xnoremap <Plug>(open-url-search-so) :OpenSearchURL so =open_url#get_selection()
nnoremap <Plug>(open-url-search-so) :OpenSearchURL so <cword>
xnoremap <Plug>(open-url-search) :OpenSearchURL =open_url#get_selection()
nnoremap <Plug>(open-url-search) :OpenSearchURL <cword>
xnoremap <Plug>(open-url-browser) :OpenURL =open_url#get_selection()
nnoremap <Plug>(open-url-browser) :OpenURL <cfile>
nnoremap <C-L> :WinResizerStartResize
snoremap <silent> <Plug>snipMateBack a=snipMate#BackwardsSnippet()
snoremap <silent> <Plug>snipMateNextOrTrigger a=snipMate#TriggerSnippet()
nnoremap <silent> <Plug>SurroundRepeat .
nmap <silent> <C-N> :call signature#GotoMark( "next", "line", "pos" )
vnoremap <silent> <Plug>(quickrun) :QuickRun -mode v
nnoremap <silent> <Plug>(quickrun) :QuickRun -mode n
nnoremap <silent> <Plug>(quickrun-op) :set operatorfunc=quickrun#operatorg@
nnoremap <silent> <Plug>GitGutterPreviewHunk :call gitgutter#utility#warn('Please change your map <Plug>GitGutterPreviewHunk to <Plug>(GitGutterPreviewHunk)')
nnoremap <silent> <Plug>(GitGutterPreviewHunk) :GitGutterPreviewHunk
nnoremap <silent> <Plug>GitGutterUndoHunk :call gitgutter#utility#warn('Please change your map <Plug>GitGutterUndoHunk to <Plug>(GitGutterUndoHunk)')
nnoremap <silent> <Plug>(GitGutterUndoHunk) :GitGutterUndoHunk
nnoremap <silent> <Plug>GitGutterStageHunk :call gitgutter#utility#warn('Please change your map <Plug>GitGutterStageHunk to <Plug>(GitGutterStageHunk)')
nnoremap <silent> <Plug>(GitGutterStageHunk) :GitGutterStageHunk
xnoremap <silent> <Plug>GitGutterStageHunk :call gitgutter#utility#warn('Please change your map <Plug>GitGutterStageHunk to <Plug>(GitGutterStageHunk)')
xnoremap <silent> <Plug>(GitGutterStageHunk) :GitGutterStageHunk
nnoremap <silent> <expr> <Plug>GitGutterPrevHunk &diff ? '[c' : ":\call gitgutter#utility#warn('Please change your map \<Plug>GitGutterPrevHunk to \<Plug>(GitGutterPrevHunk)')\"
nnoremap <silent> <expr> <Plug>(GitGutterPrevHunk) &diff ? '[c' : ":\execute v:count1 . 'GitGutterPrevHunk'\"
nnoremap <silent> <expr> <Plug>GitGutterNextHunk &diff ? ']c' : ":\call gitgutter#utility#warn('Please change your map \<Plug>GitGutterNextHunk to \<Plug>(GitGutterNextHunk)')\"
nnoremap <silent> <expr> <Plug>(GitGutterNextHunk) &diff ? ']c' : ":\execute v:count1 . 'GitGutterNextHunk'\"
xnoremap <silent> <Plug>(GitGutterTextObjectOuterVisual) :call gitgutter#hunk#text_object(0)
xnoremap <silent> <Plug>(GitGutterTextObjectInnerVisual) :call gitgutter#hunk#text_object(1)
onoremap <silent> <Plug>(GitGutterTextObjectOuterPending) :call gitgutter#hunk#text_object(0)
onoremap <silent> <Plug>(GitGutterTextObjectInnerPending) :call gitgutter#hunk#text_object(1)
nnoremap <silent> <F12> :TagbarToggle
nnoremap <silent> <F3> :SyntasticCheck
nnoremap <silent> <F2> :call myNetrw#ToggleNetrw()
nnoremap <silent> <F4> :call locationlist#LocationListToggle()
vmap <F11> "9y: !google-chrome-stable 9
nnoremap <C-V> lh
noremap <C-Z> <Nop>
nnoremap <silent> <C-C> :tabclose
nnoremap <silent> <C-T> :tabnew
nnoremap <silent> <F8> "+p
vnoremap <silent> <F7> "+y
nnoremap <silent> <C-K> :nohlsearch
vnoremap <C-M> 
vmap <Right> <Nop>
vmap <Left> <Nop>
vmap <Down> <Nop>
vmap <Up> <Nop>
vmap <BS> <Nop>
nmap <Right> <Nop>
nmap <Left> <Nop>
nmap <Down> <Nop>
nmap <Up> <Nop>
nmap <BS> <Nop>
omap <Right> <Nop>
omap <Left> <Nop>
omap <Down> <Nop>
omap <Up> <Nop>
omap <BS> <Nop>
cnoremap  <Home>
cnoremap  <Left>
inoremap  =eval(input('Calculate: '))
cnoremap  <Del>
inoremap  
cnoremap  <End>
cnoremap  <Right>
inoremap  
imap S <Plug>ISurround
imap s <Plug>Isurround
imap 	 <Plug>snipMateNextOrTrigger
cnoremap  <Nop>
inoremap  
cnoremap  <Nop>
inoremap  
cnoremap  <Down>
cnoremap  <Up>
cnoremap  <Nop>
imap 	 <Plug>snipMateShow
imap  <Plug>Isurround
cnoremap  <End>
inoremap  bveUea
cnoremap  <Nop>
inoremap <silent>  =editing#LookUpwards()
cnoremap f <S-Right>
cnoremap b <S-Left>
inoremap  
cnoremap  <Nop>
inoremap "d ""i
inoremap 'd ''i
inoremap (d ()i
inoremap -<C-K> 
inoremap - 
inoremap <d <>i
inoremap <silent> @@@ =editing#GetEmailAddress()
inoremap [d []i
inoremap kj 
inoremap {d {}i
iabbr #=== # ==============================================================================
let &cpo=s:cpo_save
unlet s:cpo_save
set autochdir
set autoread
set background=dark
set backup
set backupdir=~/.vim/backup
set backupext=.back
set backupskip=/tmp/*,/var/spool/cron/*
set belloff=all
set casemap=internal
set cedit=
set completeopt=menuone
set confirm
set diffopt=filler,context:3,vertical,foldcolumn:4,internal
set directory=~/.vim/swap
set display=truncate
set expandtab
set fileencodings=utf-8,cp1251,koi8-r,cp866,ucs-2
set fillchars=fold:-,stl:\ ,stlnc:\ ,vert:|,diff:-
set foldlevelstart=0
set grepprg=grep\ --line-number\ --binary-files=without-match\ $*
set guicursor=a:hor1-Cursor/lCursor,a:blinkon500,a:blinkoff500,a:blinkwait100
set guifont=Liberation\ Mono\ 10
set guioptions=agt
set helplang=en
set hidden
set history=300
set hlsearch
set incsearch
set infercase
set iskeyword=@,a-z,A-Z,48-57,_,-,128-175,192-255
set nojoinspaces
set langmap=йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,х[,ъ],фa,ыs,вd,аf,пg,��h,оj,лk,дl,ж\\;,э',яz,чx,сc,мv,иb,тn,ю.,ЙQ,ЦW,УE,КR,ЕT,НY,ГU,ШI,ЩO,ЗP,Х{,Ъ},ФA,ЫS,ВD,АF,ПG,РH,ОJ,��K,ДL,Ж:,Э',ЯZ,ЧX,СC,МV,ИB,ТN,Б<,Ю>
set laststatus=2
set listchars=eol:¬,tab:T-,extends:»,precedes:«,conceal:*
set matchpairs=(:),{:},[:],<:>
set maxmempattern=512
set modelines=1
set mousemodel=popup
set nrformats=octal,hex,bin
set previewheight=20
set pumheight=17
set report=0
set rulerformat=%23(%06l:%02c/%06L[%03p%%]%)
set runtimepath=~/.vim,~/.vim/bundle/Vundle.vim,~/.vim/bundle/syntastic.vim,~/.vim/bundle/bufexplorer.vim,~/.vim/bundle/gitgutter.vim,~/.vim/bundle/indent-line.vim,~/.vim/bundle/quickrun.vim,~/.vim/bundle/signature.vim,~/.vim/bundle/surround.vim,~/.vim/bundle/tagbar.vim,~/.vim/bundle/tlib.vim,~/.vim/bundle/vim-addon-mw-utils.vim,~/.vim/bundle/snippets.vim,~/.vim/bundle/winresizer.vim,~/.vim/bundle/open-url.vim,~/.vim/bundle/man.vim,~/.vim/bundle/niji.vim,~/.vim/bundle/sessions.vim,~/.vim/bundle/translator.vim,~/.vim/bundle/comment.vim,~/.vim/bundle/ag.vim,/usr/share/vim/vim91,/usr/share/vim/vim91/pack/dist/opt/netrw,/usr/share/vim/vimfiles,/usr/share/vim/vimfiles/after,~/.vim/after,~/.vim/bundle/Vundle.vim,~/.vim/bundle/Vundle.vim/after,~/.vim/bundle/syntastic.vim/after,~/.vim/bundle/bufexplorer.vim/after,~/.vim/bundle/gitgutter.vim/after,~/.vim/bundle/indent-line.vim/after,~/.vim/bundle/quickrun.vim/after,~/.vim/bundle/signature.vim/after,~/.vim/bundle/surround.vim/after,~/.vim/bundle/tagbar.vim/after,~/.vim/bundle/tlib.vim/after,~/.vim/bundle/vim-addon-mw-utils.vim/after,~/.vim/bundle/snippets.vim/after,~/.vim/bundle/winresizer.vim/after,~/.vim/bundle/open-url.vim/after,~/.vim/bundle/man.vim/after,~/.vim/bundle/niji.vim/after,~/.vim/bundle/sessions.vim/after,~/.vim/bundle/translator.vim/after,~/.vim/bundle/comment.vim/after,~/.vim/bundle/ag.vim/after
set scrolloff=3
set secure
set sessionoptions=buffers,curdir,folds,help,options,tabpages,terminal,unix
set shiftround
set shiftwidth=4
set shortmess=filnrxsIcF
set showbreak=>>\ 
set noshowmode
set showtabline=2
set sidescroll=1
set sidescrolloff=7
set smarttab
set softtabstop=4
set spellfile=~/.vim/spell/added-by-user.utf-8.add
set spelllang=en_us,ru_ru
set spellsuggest=fast
set splitbelow
set splitright
set statusline=\ %.80F\ %r\ %h\ %w%=%#StatusFType#\ %{&filetype}\ %#StatusFFormat#%{&fileencoding}\ [%{&fileformat}]\ %#StatusFPos#[%06l:%02c/%06L][%03p%%]\ %#SyntasticStatusLine#%{SyntasticStatuslineFlag()}%*
set noswapfile
set switchbuf=useopen
set synmaxcol=500
set tabline=%!tabs#ShortTabLine()
set tabstop=4
set tags=./tags,~/.vim/tags
set termencoding=utf-8
set toolbar=
set undoreload=-1
set updatetime=10000
set viewoptions=cursor,folds,unix,curdir
set viminfo='50,<1000000,s51200,h
set virtualedit=block
set whichwrap=
set wildcharm=<Tab>
set wildignore=*.o,*.obj
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/projects/git/LFS/stage-2-blfs-stable-x86_64
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess+=aoO
badd +1 ~/projects/git/LFS/stage-2-blfs-stable-x86_64/build/queue
badd +1 ~/projects/git/LFS/stage-2-blfs-stable-x86_64/wget-list
badd +0 ~/projects/git/LFS/stage-2-blfs-stable-x86_64/deps
badd +0 ~/tmp/TODO
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit ~/projects/git/LFS/stage-2-blfs-stable-x86_64/build
argglobal
balt ~/projects/git/LFS/stage-2-blfs-stable-x86_64/build/queue
let s:cpo_save=&cpo
set cpo&vim
nnoremap <buffer> <nowait> <silent>  <Nop>
nnoremap <buffer> <nowait> <silent>  <Nop>
nmap <buffer> <nowait> <silent>  <Plug>NetrwLocalBrowseCheck
nmap <buffer> <nowait> <silent>  <Plug>NetrwRefresh
nmap <buffer> <nowait> <silent>   mfj
nnoremap <buffer> <nowait> <silent> % <Nop>
nnoremap <buffer> <nowait> <silent> -ch :nohlsearch
nnoremap <buffer> <nowait> <silent> -bp :bprevious
nnoremap <buffer> <nowait> <silent> -bn :bnext
nnoremap <buffer> <nowait> <silent> - <Nop>
xmap <buffer> -hs <Plug>(GitGutterStageHunk)
nmap <buffer> <nowait> <silent> C :call myNetrw#GoToRootDir()
nnoremap <buffer> <nowait> <silent> S <Nop>
nnoremap <buffer> <nowait> <silent> Th <Nop>
nnoremap <buffer> <nowait> <silent> Tb <Nop>
nmap <buffer> [c <Plug>(GitGutterPrevHunk)
nmap <buffer> ]c <Plug>(GitGutterNextHunk)
nnoremap <buffer> <nowait> <silent> a <Nop>
xmap <buffer> ac <Plug>(GitGutterTextObjectOuterVisual)
omap <buffer> ac <Plug>(GitGutterTextObjectOuterPending)
nmap <buffer> <nowait> <silent> cf <Plug>NetrwOpenFile
nmap <buffer> <nowait> <silent> cd <Plug>NetrwLcd
nnoremap <buffer> <nowait> <silent> cB <Nop>
nnoremap <buffer> <nowait> <silent> cb <Nop>
nmap <buffer> <nowait> <silent> gb <Plug>NetrwBookHistHandler_gb
nmap <buffer> <nowait> <silent> h <Plug>NetrwBrowseUpDir
xmap <buffer> ic <Plug>(GitGutterTextObjectInnerVisual)
omap <buffer> ic <Plug>(GitGutterTextObjectInnerPending)
nmap <buffer> <nowait> <silent> l <Plug>NetrwLocalBrowseCheck
nnoremap <buffer> <nowait> <silent> mp <Nop>
nnoremap <buffer> <nowait> <silent> mX <Nop>
nnoremap <buffer> <nowait> <silent> mv <Nop>
nnoremap <buffer> <nowait> <silent> mu <Nop>
nnoremap <buffer> <nowait> <silent> mT <Nop>
nnoremap <buffer> <nowait> <silent> mr <Nop>
nnoremap <buffer> <nowait> <silent> mh <Nop>
nnoremap <buffer> <nowait> <silent> mg <Nop>
nnoremap <buffer> <nowait> <silent> mA <Nop>
nnoremap <buffer> <nowait> <silent> ma <Nop>
nnoremap <buffer> <nowait> <silent> p <Nop>
nnoremap <buffer> <nowait> <silent> qL <Nop>
nnoremap <buffer> <nowait> <silent> qF <Nop>
nnoremap <buffer> <F1> :he netrw-quickhelp
nmap <buffer> <nowait> <silent> <S-CR> <Plug>NetrwTreeSqueeze
nnoremap <buffer> <silent> <S-Up> :Pexplore
nnoremap <buffer> <silent> <S-Down> :Nexplore
nnoremap <buffer> <nowait> <silent> <C-H> <Nop>
nmap <buffer> <nowait> <silent> <C-R> <Plug>NetrwRefresh
nnoremap <buffer> <nowait> <silent> <C-L> <Nop>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
set breakindent
setlocal breakindent
set breakindentopt=min:1,shift:2
setlocal breakindentopt=min:1,shift:2
setlocal bufhidden=delete
setlocal nobuflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinscopedecls=public,protected,private
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=81
setlocal colorcolumn=0
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*\ %s\ */
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal completeopt=
set concealcursor=nic
setlocal concealcursor=nic
set conceallevel=3
setlocal conceallevel=3
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal diffanchors=
setlocal equalprg=
setlocal errorformat=
setlocal eventignorewin=
setlocal expandtab
if &filetype != 'netrw'
setlocal filetype=netrw
endif
setlocal fillchars=
setlocal findfunc=
setlocal fixendofline
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatoptions=tcq
setlocal formatprg=
setlocal grepformat=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal infercase
setlocal iskeyword=@,a-z,A-Z,48-57,_,-,128-175,192-255
setlocal keywordprg=
setlocal lhistory=10
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispoptions=
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal nomodifiable
setlocal nrformats=octal,hex,bin
set number
setlocal nonumber
set numberwidth=7
setlocal numberwidth=7
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal readonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
set signcolumn=yes
setlocal signcolumn=yes
setlocal nosmartindent
setlocal nosmoothscroll
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=~/.vim/spell/added-by-user.utf-8.add
setlocal spelllang=en_us,ru_ru
setlocal spelloptions=
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=500
if &syntax != 'netrw'
setlocal syntax=netrw
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal nowinfixbuf
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 9 - ((8 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 9
normal! 0
lcd ~/projects/git/LFS/stage-2-blfs-stable-x86_64/build
tabnext
edit ~/projects/git/LFS/stage-2-blfs-stable-x86_64/build/queue
argglobal
balt ~/projects/git/LFS/stage-2-blfs-stable-x86_64/build/queue
let s:cpo_save=&cpo
set cpo&vim
xmap <buffer> -hs <Plug>(GitGutterStageHunk)
nmap <buffer> [c <Plug>(GitGutterPrevHunk)
nmap <buffer> ]c <Plug>(GitGutterNextHunk)
xmap <buffer> ac <Plug>(GitGutterTextObjectOuterVisual)
omap <buffer> ac <Plug>(GitGutterTextObjectOuterPending)
xmap <buffer> ic <Plug>(GitGutterTextObjectInnerVisual)
omap <buffer> ic <Plug>(GitGutterTextObjectInnerPending)
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
set breakindent
setlocal breakindent
set breakindentopt=min:1,shift:2
setlocal breakindentopt=min:1,shift:2
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinscopedecls=public,protected,private
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=81
setlocal colorcolumn=81
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal completeopt=
set concealcursor=nic
setlocal concealcursor=inc
set conceallevel=3
setlocal conceallevel=2
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal diffanchors=
setlocal equalprg=
setlocal errorformat=
setlocal eventignorewin=
setlocal expandtab
if &filetype != 'conf'
setlocal filetype=conf
endif
setlocal fillchars=
setlocal findfunc=
setlocal fixendofline
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatoptions=croql
setlocal formatprg=
setlocal grepformat=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal infercase
setlocal iskeyword=@,a-z,A-Z,48-57,_,-,128-175,192-255
setlocal keywordprg=
setlocal lhistory=10
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispoptions=
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex,bin
set number
setlocal number
set numberwidth=7
setlocal numberwidth=7
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
set signcolumn=yes
setlocal signcolumn=yes
setlocal nosmartindent
setlocal nosmoothscroll
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=~/.vim/spell/added-by-user.utf-8.add
setlocal spelllang=en_us,ru_ru
setlocal spelloptions=
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=500
if &syntax != 'conf'
setlocal syntax=conf
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal nowinfixbuf
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
lcd ~/projects/git/LFS/stage-2-blfs-stable-x86_64/build
tabnext
edit ~/projects/git/LFS/stage-2-blfs-stable-x86_64/wget-list
argglobal
balt ~/projects/git/LFS/stage-2-blfs-stable-x86_64/build/queue
let s:cpo_save=&cpo
set cpo&vim
xmap <buffer> -hs <Plug>(GitGutterStageHunk)
nmap <buffer> [c <Plug>(GitGutterPrevHunk)
nmap <buffer> ]c <Plug>(GitGutterNextHunk)
xmap <buffer> ac <Plug>(GitGutterTextObjectOuterVisual)
omap <buffer> ac <Plug>(GitGutterTextObjectOuterPending)
xmap <buffer> ic <Plug>(GitGutterTextObjectInnerVisual)
omap <buffer> ic <Plug>(GitGutterTextObjectInnerPending)
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
set breakindent
setlocal breakindent
set breakindentopt=min:1,shift:2
setlocal breakindentopt=min:1,shift:2
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinscopedecls=public,protected,private
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=81
setlocal colorcolumn=81
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal completeopt=
set concealcursor=nic
setlocal concealcursor=inc
set conceallevel=3
setlocal conceallevel=2
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal diffanchors=
setlocal equalprg=
setlocal errorformat=
setlocal eventignorewin=
setlocal expandtab
if &filetype != 'conf'
setlocal filetype=conf
endif
setlocal fillchars=
setlocal findfunc=
setlocal fixendofline
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatoptions=croql
setlocal formatprg=
setlocal grepformat=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal infercase
setlocal iskeyword=@,a-z,A-Z,48-57,_,-,128-175,192-255
setlocal keywordprg=
setlocal lhistory=10
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispoptions=
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex,bin
set number
setlocal number
set numberwidth=7
setlocal numberwidth=7
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
set signcolumn=yes
setlocal signcolumn=yes
setlocal nosmartindent
setlocal nosmoothscroll
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=~/.vim/spell/added-by-user.utf-8.add
setlocal spelllang=en_us,ru_ru
setlocal spelloptions=
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=500
if &syntax != 'conf'
setlocal syntax=conf
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal nowinfixbuf
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
lcd ~/projects/git/LFS/stage-2-blfs-stable-x86_64/build
tabnext
edit ~/projects/git/LFS/stage-2-blfs-stable-x86_64/deps
argglobal
balt ~/projects/git/LFS/stage-2-blfs-stable-x86_64/wget-list
let s:cpo_save=&cpo
set cpo&vim
xmap <buffer> -hs <Plug>(GitGutterStageHunk)
nmap <buffer> [c <Plug>(GitGutterPrevHunk)
nmap <buffer> ]c <Plug>(GitGutterNextHunk)
xmap <buffer> ac <Plug>(GitGutterTextObjectOuterVisual)
omap <buffer> ac <Plug>(GitGutterTextObjectOuterPending)
xmap <buffer> ic <Plug>(GitGutterTextObjectInnerVisual)
omap <buffer> ic <Plug>(GitGutterTextObjectInnerPending)
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
set breakindent
setlocal breakindent
set breakindentopt=min:1,shift:2
setlocal breakindentopt=min:1,shift:2
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinscopedecls=public,protected,private
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=81
setlocal colorcolumn=81
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal completeopt=
set concealcursor=nic
setlocal concealcursor=inc
set conceallevel=3
setlocal conceallevel=2
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal diffanchors=
setlocal equalprg=
setlocal errorformat=
setlocal eventignorewin=
setlocal expandtab
if &filetype != 'conf'
setlocal filetype=conf
endif
setlocal fillchars=
setlocal findfunc=
setlocal fixendofline
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatoptions=croql
setlocal formatprg=
setlocal grepformat=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal infercase
setlocal iskeyword=@,a-z,A-Z,48-57,_,-,128-175,192-255
setlocal keywordprg=
setlocal lhistory=10
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispoptions=
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex,bin
set number
setlocal number
set numberwidth=7
setlocal numberwidth=7
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
set signcolumn=yes
setlocal signcolumn=yes
setlocal nosmartindent
setlocal nosmoothscroll
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=~/.vim/spell/added-by-user.utf-8.add
setlocal spelllang=en_us,ru_ru
setlocal spelloptions=
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=500
if &syntax != 'conf'
setlocal syntax=conf
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal nowinfixbuf
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
lcd ~/projects/git/LFS/stage-2-blfs-stable-x86_64/build
tabnext
edit ~/tmp/TODO
argglobal
balt ~/projects/git/LFS/stage-2-blfs-stable-x86_64/deps
let s:cpo_save=&cpo
set cpo&vim
xmap <buffer> -hs <Plug>(GitGutterStageHunk)
nmap <buffer> [c <Plug>(GitGutterPrevHunk)
nmap <buffer> ]c <Plug>(GitGutterNextHunk)
xmap <buffer> ac <Plug>(GitGutterTextObjectOuterVisual)
omap <buffer> ac <Plug>(GitGutterTextObjectOuterPending)
xmap <buffer> ic <Plug>(GitGutterTextObjectInnerVisual)
omap <buffer> ic <Plug>(GitGutterTextObjectInnerPending)
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
set breakindent
setlocal breakindent
set breakindentopt=min:1,shift:2
setlocal breakindentopt=min:1,shift:2
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinscopedecls=public,protected,private
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=81
setlocal colorcolumn=81
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*\ %s\ */
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal completeopt=
set concealcursor=nic
setlocal concealcursor=inc
set conceallevel=3
setlocal conceallevel=2
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal diffanchors=
setlocal equalprg=
setlocal errorformat=
setlocal eventignorewin=
setlocal expandtab
if &filetype != ''
setlocal filetype=
endif
setlocal fillchars=
setlocal findfunc=
setlocal fixendofline
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatoptions=tcq
setlocal formatprg=
setlocal grepformat=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal infercase
setlocal iskeyword=@,a-z,A-Z,48-57,_,-,128-175,192-255
setlocal keywordprg=
setlocal lhistory=10
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispoptions=
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex,bin
set number
setlocal number
set numberwidth=7
setlocal numberwidth=7
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
set signcolumn=yes
setlocal signcolumn=yes
setlocal nosmartindent
setlocal nosmoothscroll
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=~/.vim/spell/added-by-user.utf-8.add
setlocal spelllang=en_us,ru_ru
setlocal spelloptions=
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=500
if &syntax != ''
setlocal syntax=
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal nowinfixbuf
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
lcd ~/projects/git/LFS/stage-2-blfs-stable-x86_64/build
tabnext 2
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
set shortmess=filnrxsIcF
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
