scriptencoding utf-8

" вкл/выкл плагин
let g:indentLine_enabled = 1

if g:term_256_color
    let g:indentLine_char = '┊'
else
    let g:indentLine_char = '¦'
endif

let g:indentLine_color_term           = 236
let g:indentLine_bgcolor_term         = 0
let g:indentLine_color_gui            = '#303030'
let g:indentLine_bgcolor_gui          = '#000000'
let g:indentLine_color_tty_dark       = 7
let g:indentLine_indentLevel          = 12
let g:indentLine_showFirstIndentLevel = 0
let g:indentLine_fileType             = []
let g:indentLine_fileTypeExclude      = ['help', 'man']
let g:indentLine_bufTypeExclude       = ['help', 'terminal', 'quickfix']
let g:indentLine_bufNameExclude       = ['_.*']
let g:indentLine_maxLines             = 20000
let g:indentLine_faster               = 1
let g:indentLine_concealcursor        = 'inc'
let g:indentLine_leadingSpaceChar     = '.'
let g:indentLine_leadingSpaceEnabled  = 0
