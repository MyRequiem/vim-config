vim9script 

# Цвет Status Bar в Insert Mode.
export def SetStatusBarColorInsert()
    if v:insertmode == 'i'
        highlight StatusLine term=NONE cterm=NONE ctermfg=15 ctermbg=4 gui=NONE guisp=NONE guifg=#FFFFFF guibg=#0000AA
        highlight TabLineSel  term=NONE cterm=NONE ctermfg=15 ctermbg=4 gui=NONE guifg=#FFFFFF guibg=#0000AA
    elseif v:insertmode == 'r'
        highlight StatusLine term=NONE cterm=NONE ctermfg=15 ctermbg=1 gui=NONE guisp=NONE guifg=#FFFFFF guibg=#AA0000
        highlight TabLineSel  term=NONE cterm=NONE ctermfg=15 ctermbg=1 gui=NONE guifg=#FFFFFF guibg=#AA0000
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
            highlight StatusLine term=NONE cterm=NONE ctermfg=14 ctermbg=236 gui=NONE guisp=NONE guifg=#55FFFF guibg=#303030
            highlight TabLineSel  term=NONE cterm=NONE ctermfg=14 ctermbg=236 gui=NONE guifg=#55FFFF guibg=#303030
        else
            highlight StatusLine term=NONE cterm=bold ctermfg=6  ctermbg=0   gui=NONE guisp=NONE guifg=NONE    guibg=NONE
            highlight TabLineSel  term=NONE cterm=bold ctermfg=6  ctermbg=0   gui=NONE guifg=NONE    guibg=NONE
        endif
    endif
    exec 'redrawtabline'
enddef
