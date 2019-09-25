scriptencoding utf-8

" отключение плагина
" let g:winresizer_enable = 0

let g:winresizer_start_key     = '<C-l>'
let g:winresizer_gui_start_key = '<C-l>'
" режимы:
"    r    - изменение размеров окон
"    m    - перемещение окон
"    f    - изменение фокуса окон
"    e    - переключение режимов

let g:winresizer_vert_resize        = 1
let g:winresizer_horiz_resize       = 1
let g:winresizer_gui_enable         = 1
let g:winresizer_finish_with_escape = 0
" h, l, j, k
let g:winresizer_keycode_left       = 104
let g:winresizer_keycode_down       = 106
let g:winresizer_keycode_up         = 107
let g:winresizer_keycode_right      = 108
" r, m, f, e
let g:winresizer_keycode_resize     = 114
let g:winresizer_keycode_move       = 109
let g:winresizer_keycode_focus      = 102
let g:winresizer_keycode_mode       = 101
" <Enter>, q
let g:winresizer_keycode_finish     = 13
let g:winresizer_keycode_cancel     = 113
