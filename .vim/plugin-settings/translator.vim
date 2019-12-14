scriptencoding utf-8

" отключаем загрузку плагина
" let g:loaded_translator = 1

" программа переводчик
" (default 'trans' - пакет 'translate-shell' с SBo репозитория)
" let g:translator_bin = 'trans'

" параметры для переводчика (default: '')
let g:translator_param          = 'en:ru -brief -no-warn -d -browser /dev/null'
" параметры для перевода в обратную сторону (default: '')
let g:translator_param_reversed = 'ru:en -brief -no-warn -d -browser /dev/null'

" копировать переведенный текст в системный буфер обмена? (default: 0)
" (Vim должен быть собран с 'xterm_clipboard')
let g:translator_copy_to_clipboard = 1

" цвет/фон переведенного текста (default: White/Black)
" Black, DarkBlue, DarkGreen, DarkCyan, DarkRed, DarkMagenta, DarkYellow,
" DarkGray, Gray, Blue, Green, Cyan, Red, Magenta, Yellow, White, NONE
let g:translator_color_translated_text   = 'DarkGreen'
let g:translator_bgcolor_translated_text = 'Black'

" сочетание клавиш для перевода выделенного текста (default: <leader>t)
let g:translator_hotkey = 'tr'
" в обратную сторону (default: <leader>T)
let g:translator_hotkey_reversed = '<leader>tr'
