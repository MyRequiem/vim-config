syntax keyword doxygenOther contained arg author authors date deprecated li
  \ return returns detailed constructor tparam property type method code
  \ endcode page mainpage see invariant note post pre remarks since test
  \ nextgroup=doxygenSpecialMultilineDesc

highlight doxygenParam                  ctermfg=6 ctermbg=0 guifg=#00AAAA guibg=#000000
highlight doxygenComment                ctermfg=2 ctermbg=0 guifg=#00AA00 guibg=#000000
highlight doxygenBrief                  ctermfg=2 ctermbg=0 guifg=#00AA00 guibg=#000000
highlight doxygenBOther                 ctermfg=6 ctermbg=0 guifg=#00AAAA guibg=#000000
highlight doxygenParam                  ctermfg=6 ctermbg=0 guifg=#00AAAA guibg=#000000
highlight doxygenBody                   ctermfg=2 ctermbg=0 guifg=#00AA00 guibg=#000000
highlight doxygenParamName              ctermfg=3 ctermbg=0 guifg=#AA5500 guibg=#000000
highlight doxygenSpecialOnelineDesc     ctermfg=2 ctermbg=0 guifg=#00AA00 guibg=#000000
highlight doxygenSpecialTypeOnelineDesc ctermfg=2 ctermbg=0 guifg=#00AA00 guibg=#000000
if g:term_256_color
    highlight doxygenSpecialHeading         ctermfg=12 ctermbg=0 guifg=#5555FF guibg=#000000
else
    highlight doxygenSpecialHeading         ctermfg=4  ctermbg=0 guifg=#0000AA guibg=#000000
endif
