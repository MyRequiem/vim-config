scriptencoding utf-8

"""
""" :h ag-configuation
"""

" отключаем загрузку плагина
" let g:loaded_ag = 1

" комбинация клавиш для запуска grep (default: '<leader>g')
" let g:ag_hotkey = '<leader>g'

" параметры для 'ag'. Default:
" let g:ag_param = [
"         \ '--nogroup',
"         \ '--context=0',
"         \ '--nocolor',
"         \ '--filename',
"         \ '--numbers',
"         \ '--print-long-lines',
"         \ '--silent',
"         \ '--hidden',
"         \ '--case-sensitive',
"         \ '$*'
" \]

" ширина окна quickfix (default: '10')
let g:ag_quickfix_height = '15'

" подсвечивать найденные совпадения (default: 0)
let g:ag_highlight_matches = 1

" цвет подсветки совпадений. Default:
let g:ag_highlight_color = 'highlight AgMatches ' .
    \ 'term=NONE cterm=NONE ctermfg=1 ' .
    \ 'ctermbg=0 gui=NONE guisp=NONE guifg=#AA0000 guibg=#000000'

" формат распознавания ошибок (default: '%f:%l:%m')
" let g:ag_err_format = '%f:%l:%m'

" открывать окно quickfix сверху (default: 0)
" let g:ag_quickfix_window_on_top = 1
