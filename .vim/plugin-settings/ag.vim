vim9script

###
# :h ag-configuration
###

# Отключаем загрузку плагина.
# g:loaded_ag = 1

# Комбинация клавиш для запуска (Default: '<leader>g').
# g:ag_hotkey = '<leader>g'

# Параметры для 'ag' (Default: []).
# см. $ man ag
# g:ag_param = [
#     '--nofilename',
#     '--nonumbers'
# ]

# Ширина окна quickfix (Default: 10).
g:ag_quickfix_height = 15

# Открывать окно quickfix сверху (Default: 0).
# g:ag_quickfix_window_on_top = 1

# Подсвечивать найденные совпадения (Default: 0).
g:ag_highlight_matches = 1

# Цвет подсветки найденных совпадений.
# (Default: 'highlight AgMatches ctermfg=1 guifg=#AA0000')
g:ag_highlight_color = 'highlight AgMatches '
                    .. 'ctermfg=9 guifg=#FF5555'
