vim9script

###
# :h tagbar.txt
###

# По <F12> открываем/закрываем панель тегов
nnoremap <silent> <F12> :TagbarToggle<CR>

# Базовые настройки интерфейса.
g:tagbar_width          = 50           # ширина панели в символах
g:tagbar_zoomwidth      = 0            # не расширять окно при фокусе
g:tagbar_autofocus      = 1            # сразу переводить курсор в окно Tagbar
g:tagbar_sort           = 0            # сортировать по порядку в файле (не по алфавиту)
g:tagbar_compact        = 1            # компактный вид без пустых строк-разделителей
g:tagbar_previewwin_pos = 'rightbelow' # позиция окна предпросмотра прототипов
g:tagbar_systemenc      = 'utf-8'      # системная кодировка для утилиты ctags
g:tagbar_silent         = 1            # отключить лишние сообщения плагина в статуслайне
g:tagbar_iconchars      = ['▸', '▾']   # символы сворачивания блоков структуры

# Подветка и цвета структуры.
highlight link TagbarKind       Function    # функции и переменные
highlight link TagbarNestedKind Function    # вложенные функции/переменные
highlight link TagbarScope      String      # классы, структуры, пространства имен
highlight link TagbarType       Constant    # возвращаемые типы данных
highlight link TagbarSignature  Comment     # сигнатуры и аргументы функций
highlight link TagbarPseudoID   SignColumn  # символ '*' для обозначения псевдотегов
highlight link TagbarFoldIcon   Ignore      # значки раскрытия блоков ('▸', '▾')

# Подсветка текущего тега под курсором
highlight TagbarHighlight ctermfg=1 ctermbg=NONE cterm=bold guifg=#FF5555 guibg=NONE

highlight link TagbarVisibilityPublic    Ignore # символ публичного доступа ('+')
highlight link TagbarVisibilityProtected Ignore # символ защищенного доступа ('#')
highlight link TagbarVisibilityPrivate   Ignore # символ приватного доступа ('-')
