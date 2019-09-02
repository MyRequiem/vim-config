syntax keyword doxygenOther contained arg author authors date deprecated li
  \ return returns detailed constructor tparam property type method code
  \ endcode page mainpage see invariant note post pre remarks since test
  \ nextgroup=doxygenSpecialMultilineDesc

highlight doxygenParam                  ctermfg=6   guifg=#00AAAA
highlight doxygenComment                ctermfg=2   guifg=#00AA00
highlight doxygenBrief                  ctermfg=2   guifg=#00AA00
highlight doxygenBOther                 ctermfg=6   guifg=#00AAAA
highlight doxygenParam                  ctermfg=6   guifg=#00AAAA
highlight doxygenBody                   ctermfg=2   guifg=#00AA00
highlight doxygenParamName              ctermfg=3   guifg=#AA5500
highlight doxygenSpecialOnelineDesc     ctermfg=2   guifg=#00AA00
highlight doxygenSpecialTypeOnelineDesc ctermfg=2   guifg=#00AA00
if g:term_256_color
    highlight doxygenSpecialHeading         ctermfg=12  guifg=#5555FF
else
    highlight doxygenSpecialHeading         ctermfg=4   guifg=#0000AA
endif
