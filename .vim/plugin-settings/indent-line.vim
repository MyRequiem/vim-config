vim9script

# вкл/выкл плагин
g:indentLine_enabled = 1

if g:term_256_color
    g:indentLine_char = '┊'
else
    g:indentLine_char = '¦'
endif

g:indentLine_setColors            = 0
g:indentLine_color_term           = 236
g:indentLine_bgcolor_term         = 0
g:indentLine_color_gui            = '#303030'
g:indentLine_bgcolor_gui          = '#000000'
g:indentLine_color_tty_dark       = 7
g:indentLine_indentLevel          = 12
g:indentLine_showFirstIndentLevel = 0
g:indentLine_fileType             = []
g:indentLine_fileTypeExclude      = ['help', 'man']
g:indentLine_bufTypeExclude       = ['help', 'terminal', 'quickfix']
g:indentLine_bufNameExclude       = ['_.*']
g:indentLine_maxLines             = 20000
g:indentLine_faster               = 1
g:indentLine_concealcursor        = 'inc'
g:indentLine_leadingSpaceChar     = '.'
g:indentLine_leadingSpaceEnabled  = 0
