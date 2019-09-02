scriptencoding utf-8

" цвет status bar в insert mode
function! statusbar#SetStatusBarColorInsert() abort " {{{1
    " режим вставки
    if v:insertmode ==# 'i'
        highlight StatusLine term=NONE cterm=NONE ctermfg=15 ctermbg=4 gui=NONE guisp=NONE guifg=#FFFFFF guibg=#0000AA
    " режим замены
    elseif v:insertmode ==# 'r'
        highlight StatusLine term=NONE cterm=NONE ctermfg=15 ctermbg=1 gui=NONE guisp=NONE guifg=#FFFFFF guibg=#AA0000
    endif
endfunction " 1}}}

" цвет status bar в visual mode
function! statusbar#SetStatusBarColorVisual() abort " {{{1
    if mode() =~# "^[vV\<C-v>]"
        " сохраняем значение параметра 'updatetime' для события CursorHold
        " (../user-settings/autocommands.vim)
        let b:updatetime_save = &updatetime
        let &updatetime = 0

        highlight! link StatusLine Visual
    endif
endfunction " 1}}}

" цвет status bar в normal mode
function! statusbar#SetStatusBarColorNormal() abort " {{{1
    " параметр b:updatetime_save устанавливаем при
    " входе в visual mode (statusbar#SetStatusBarColorVisual)
    if exists('b:updatetime_save')
        " если установлен, значит вышли в normal mode из visual mode,
        " тогда восстанавливаем параметр 'updatetime'
        let &updatetime = b:updatetime_save
        unlet b:updatetime_save
    endif

    if &modified
        " если файл изменен
        highlight! link StatusLine Number
    else
        if g:term_256_color
            highlight StatusLine term=NONE cterm=NONE ctermfg=14 ctermbg=236 gui=NONE guisp=NONE guifg=#55FFFF guibg=#303030
        else
            highlight StatusLine term=NONE cterm=bold ctermfg=6  ctermbg=0   gui=NONE guisp=NONE guifg=NONE    guibg=NONE
        endif
    endif
endfunction " 1}}}
