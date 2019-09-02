syntax match DiffFiles     "^diff\>.*"
syntax match DiffFiles     "^diff --git .*"
syntax match DiffRemoved	"^-.*"
syntax match DiffRemoved	"^<.*"
syntax match DiffAdded     "^+.*"
syntax match DiffAdded     "^>.*"
syntax match DiffLine      "^@.*" contains=diffSubname
syntax match DiffNewFileA  "^+++ .*"
syntax match DiffNewFileR  "^--- .*"
syntax match DiffIndexLine	"^index \x\x\x\x.*"

" diff [--git] a/path/file b/path/file
highlight! link DiffFiles       WildMenu
" удаленные строки
highlight! link DiffRemoved     Number
" добавленные строки
highlight! link DiffAdded       MoreMsg
" @@ -10,3 +10,3 @@
highlight! link DiffLine        LineNr
" --- a/path/file
highlight! link DiffNewFileR    Identifier
" index c884276..993833a 100644
highlight! link DiffIndexLine   DarkGrayOnBlack
" +++ b/path/file
highlight DiffNewFileA term=NONE cterm=NONE ctermfg=5 ctermbg=NONE gui=NONE guisp=NONE guifg=#AA00AA guibg=NONE
