vim9script

# Импортируется в ../user-settings/autocommands.vim

# Цвет Status Bar в Insert Mode.
export def SetStatusBarColorInsert()
    if v:insertmode == 'i'
        highlight StatusLine ctermfg=15 ctermbg=4 guifg=#FFFFFF guibg=#0000AA
        highlight TabLineSel ctermfg=15 ctermbg=4 guifg=#FFFFFF guibg=#0000AA
    elseif v:insertmode == 'r'
        highlight StatusLine ctermfg=15 ctermbg=1 guifg=#FFFFFF guibg=#AA0000
        highlight TabLineSel ctermfg=15 ctermbg=1 guifg=#FFFFFF guibg=#AA0000
    endif
    exec 'redrawtabline'
enddef

# Цвет Status Bar в Visual Mode.
export def SetStatusBarColorVisual()
    highlight! link StatusLine Visual
    highlight! link TabLineSel Visual
    exec 'redrawtabline'
enddef

# Цвет Status Bar в Normal Mode.
export def SetStatusBarColorNormal()
    if &modified
        highlight! link StatusLine Number
        highlight! link TabLineSel Number
    else
        if get(g:, 'term_256_color', false)
            highlight StatusLine ctermfg=14 ctermbg=236 guifg=#55FFFF guibg=#303030
            highlight TabLineSel ctermfg=14 ctermbg=236 guifg=#55FFFF guibg=#303030
        else
            highlight StatusLine ctermfg=6 ctermbg=0 cterm=bold
            highlight TabLineSel ctermfg=6 ctermbg=0 cterm=bold
        endif
    endif
    exec 'redrawtabline'
enddef
