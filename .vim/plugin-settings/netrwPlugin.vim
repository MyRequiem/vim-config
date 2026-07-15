vim9script

###
# Системный плагин: /usr/share/vim/vim92/plugin/netrwPlugin.vim
# :h pi_netrw.txt
###

# Переопределение клавиш.
# ~/.vim/ftplugin/netrw/netrw.vim

# Цветовая схема.
# ~/.vim/after/syntax/netrw.vim

# Отключить плагин (не загружать).
# let g:loaded_netrw       = 1
# let g:loaded_netrwPlugin = 1

# ../autoload/myNetrw.vim
import autoload 'myNetrw.vim'

# Показать/скрыть Netrw (<F2>).
nnoremap <silent><F2> <ScriptCmd>myNetrw.ToggleNetrw()<CR>

# Если Vim запускается без пути к файлу/директории, то открываем Netrw в
# текущей директории.
augroup VimStartup
    autocmd!
    autocmd VimEnter * if expand('%') == '' | edit ./ | endif
augroup END

# настройки буфера
g:netrw_bufsettings = 'nomodifiable nomodified nonumber nobuflisted '
                 \ .. 'nowrap readonly norelativenumber colorcolumn=0'
# вид списка файлов (простой список)
g:netrw_liststyle      = 0
# каталог для сохранения .netrwbook и .netrwhist
g:netrw_home           = $HOME .. '/.vim/'
# отключить мышь
g:netrw_mousema        = 0
# размер файлов: human-readable (5K, 4M, 3G)
g:netrw_sizestyle      = 'H'
# включить подсветку по типам файлов
g:netrw_special_syntax = 1
# формат времени
g:netrw_timefmt        = '[%d.%m.%y] [%H:%M:%S]'
# использовать swap
g:netrw_use_noswf      = 0
# изменять текущий каталог Vim (pwd) при переходе
g:netrw_keepdir        = 0
