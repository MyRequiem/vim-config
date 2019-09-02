scriptencoding utf-8

" убираем в командной строке таймаут ввода маппингов {{{1
augroup cmdlinetimeout
    autocmd!
    autocmd CmdlineEnter * setlocal timeoutlen=0
    autocmd CmdlineLeave * setlocal timeoutlen=1000
augroup end " 1}}}

" не подсвечивать текущую строку в insert mode {{{1
augroup icursorline
    autocmd!
    autocmd InsertEnter * setlocal nocursorline
    autocmd InsertLeave * setlocal cursorline
augroup end " 1}}}

" подсветка пробелов в конце строк, комбинаций Tab+Space, Space+Tab {{{1
augroup trailing_spases
    autocmd!
    " в read-only буферах (help, man, quickfix и т.д.) ничего не подсвечиваем
    autocmd BufReadPost * if &modifiable
        \ | if empty(execute('hi TrailingSpases', 'silent!'))
        \ |     if g:term_256_color
        \ |         highlight TrailingSpases term=NONE cterm=NONE ctermfg=4
                        \ ctermbg=244  gui=NONE guisp=NONE guifg=#FFFFFF
                        \ guibg=#808080
        \ |     else
        \ |         highlight TrailingSpases term=NONE cterm=bold,reverse
                        \ ctermfg=0 ctermbg=4 gui=NONE guisp=NONE guifg=NONE
                        \ guibg=NONE
        \ |     endif
        \ | endif
        \ | call matchadd('TrailingSpases',
                        \ '\v(\s|\t)+$|\t+\s+(\t+)?|\s+\t+(\s+)?',
                        \ -1)
        \ | endif
augroup end " 1}}}

" изменяем цвет status bar в зависимости от текущего режима Vim {{{1
augroup statusbarcolor
    autocmd!
    " нет никаких событий для autocmd при входе/выходе из режима visual,
    " поэтому для смены цвета statusbar переопределяем привязки клавиш для
    " вызова visual mode с движением курсора (./mappings.vim). Затем определяем
    " событие CursorMoved в котором проверяется режим Vim
    " ../autoload/statusbar.vim
    autocmd CursorMoved * call statusbar#SetStatusBarColorVisual()
    " при входе в insert mode меняем цвет status bar
    " ../autoload/statusbar.vim
    autocmd InsertEnter * call statusbar#SetStatusBarColorInsert()
    " событие CursorHold инициируется только в режиме normal mode, если
    " пользователь не нажимает клавишу в течение времени указанного в параметре
    " 'updatetime'
    " ../autoload/statusbar.vim
    autocmd CursorHold  * call statusbar#SetStatusBarColorNormal()
    " устанавливаем цвет status bar в normal mode
    autocmd BufEnter,InsertLeave,BufWritePost,TextChanged *
        \ call statusbar#SetStatusBarColorNormal()
augroup end " 1}}}
