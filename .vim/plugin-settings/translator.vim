vim9script

###
# :h translator.txt
###

# Отключаем загрузку плагина.
# g:loaded_translator = 1

# Сочетание клавиш для перевода: en->ru, ru->en (Default: <leader>t).
g:translator_hotkey = 'tr'

# Копировать переведенный текст в CLIPBOARD (Default: 0).
# (Vim должен быть собран с 'xterm_clipboard')
g:translator_copy_to_clipboard = 1

# Цвет/фон переведенного текста (Default: White/Black).
# Black, DarkBlue, DarkGreen, DarkCyan, DarkRed, DarkMagenta, DarkYellow,
# DarkGray, Gray, Blue, Green, Cyan, Red, Magenta, Yellow, White, NONE
g:translator_color_translated_text   = 'DarkGreen'
g:translator_bgcolor_translated_text = 'Black'
