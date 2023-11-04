scriptencoding utf-8

" /usr/share/vim/vim81/plugin/netrwPlugin.vim
" :h pi_netrw.txt

" Все настройки:
"   :NetrwSettings

" цветовая схема:
" ~/.vim/after/syntax/netrw.vim

" переопределение клавиш
" ~/.vim/ftplugin/netrw/netrw.vim

" отключаем загрузку плагина
" let g:loaded_netrw       = 1
" let g:loaded_netrwPlugin = 1

" показать/скрыть Netrw
" ../autoload/myNetrw.vim
nnoremap <silent><F2>   :call myNetrw#ToggleNetrw()<cr>

" если Vim запускается без пути к файлу/директории, то открываем браузер Netrw
augroup VimStartup
    autocmd!
    autocmd VimEnter * if expand('%') == '' | edit ./ | endif
augroup END

" настройки буфера
let g:netrw_bufsettings = 'nomodifiable nomodified nonumber nobuflisted ' .
    \ 'nowrap readonly norelativenumber colorcolumn=0'
" отключить меню для Gvim
let g:netrw_menu               = 0
" окно при нажатии 'P' справа
let g:netrw_preview            = 1
" окно при нажатии 'o' cверху
let g:netrw_alto               = 0
" окно при нажатии 'v' справа
let g:netrw_altv               = 1
" окно при нажатии '<Enter>' текущее
let g:netrw_browse_split       = 0
" ширина окна (%) при открытии по 'o', 'v', 'P', :Hexplore и :Vexplore
let g:netrw_winsize            = 70
" сообщения от netrw через echoerr, а не в новом окне ошибок
let g:netrw_use_errorwindow    = 0
" удаление пустых конечных строк для ftp файлов (для Win95)
let g:netrw_win95ftp           = 0
" отображать баннер
let g:netrw_banner             = 1
" количество каталогов в истории (~/.vim/.netrwhist)
let g:netrw_dirhistmax         = 10
" при просмотре файла ассоциированной программой использовать
let g:netrw_browsex_viewer     = 'xdg-open'
" вид списка файлов по умолчанию: 'тонкий' список (один файл на строку)
let g:netrw_liststyle          = 0
" использовать пользовательские настройки для 'cursorline' и 'cursorcolumn'
let g:netrw_cursor             = 0
" отображать notes, warnings, errors
let g:netrw_errorlvl           = 2
" каталог для сохранения .netrwbook и .netrwhist
let g:netrw_home               = $HOME . '/.vim/'
" команды копирования
let g:netrw_localcopycmd       = 'cp'
let g:netrw_localcopycmdopt    = ''
let g:netrw_localcopydircmd    = 'cp'
let g:netrw_localcopydircmdopt = '-R'
" команды создания директорий
let g:netrw_localmkdir         = 'mkdir'
let g:netrw_localmkdiropt      = ''
" команды перемещения
let g:netrw_localmovecmd       = 'mv'
let g:netrw_localmovecmdopt    = ''
" команды удаления директорий
let g:netrw_localrmdir         = 'rmdir'
let g:netrw_localrmdiropt      = ''
" отключить мышь
let g:netrw_mousemaps          = 0
" не включать опцию 'ballooneval'
let g:netrw_nobeval            = 0
" размер файлов: human-readable (5K, 4M, 3G)
let g:netrw_sizestyle          = 'H'
" сортировка по умолчанию
let g:netrw_sort_by            = 'name'
" порядок сортировки по умолчанию
let g:netrw_sort_direction     = 'normal'
" включить подсветку по типам файлов
let g:netrw_special_syntax     = 1
" формат времени
let g:netrw_timefmt            = '[%d.%m.%y %H:%M:%S]'
" использовать swap
let g:netrw_use_noswf          = 0
" изменять текущий каталог Vim (pwd) при переходе
let g:netrw_keepdir            = 0
" архиватор для 'mz'
let g:netrw_compress           = 'xz'
let g:netrw_decompress         = {
    \ '.tar': 'tar -xf',
    \ '.xz' : 'unxz',
    \ '.gz' : 'gunzip',
    \ '.bz2': 'bunzip2',
    \ '.zip': 'unzip'
\}
