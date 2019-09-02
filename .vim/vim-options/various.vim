scriptencoding utf-8

" vint: -ProhibitAbbreviationOption

" virtualedit, ve - когда использовать виртуальное редактирование, т.е. курсор
" может быть расположен там, где нет реального символа. Полезно для выбора
" прямоугольника в визуальном режиме или при редактировании таблицы.
"   block   - в режиме визуального блока
"   insert  - в режиме вставки
"   all     - во всех режимах
"   onemore - разрешить перемещению курсора за конец строки на одну позицию
" Type: string
" Default: ""
set ve=block

" eventignore, ei - список событий для автокоманд, которые следует игнорировать
"   set ei=WinEnter,WinLeave    - игнорировать перечисленные события
"   set ei=all                  - игнорировать все события
" Type: string
" Default: ""

" loadplugins, lpl - загружать плагины при запуске
" Type: boolean
" Default: on
" set lpl

" exrc, ex - включить чтение .vimrc, .exrc и .gvimrc в текущей директории
" Type: boolean
" Default: off
set ex

" secure - запрещает .vimrc (.exrc, .gvimrc) из текущего каталога что-то
" записывать в файлы, выполнять команды оболочки и т.д. Т.е. команды 'autocmd',
" 'shell' и 'write' не разрешены.
" Type: boolean
" Default: off
set secure

" gdefault, gd - использовать флаг 'g' для команды ':substitute' (':s')
" Type: boolean
" Default: off
" set nogd

" edcompatible, ed - если для команды ':substitute' (':s') заданы флаги
" 'g' " или 'c', то они снимаются, и наоборот. Установка в 'on' может поломать
" плагины
" Type: boolean
" Default: off
" set noed

" maxfuncdepth, mfd - максимальная глубина вызова функций (предотвращение
" бесконечной рекурсии)
" Type: number
" Default: 100
" set mfd=100

" sessionoptions, ssop - что сохранять в файле сессии
"   blank           - пустое окно
"   buffers         - буферы
"   curdir          - текущая директория
"   folds           - созданные складки методом manual, их состояние
"   globals         - глобальные переменные, которые начинаются с заглавного
"                       символа, содержат как минимум один строчный символ и
"                       имеют тип 'String' или 'Number'
"   help            - окно справки
"   localoptions    - локальные параметры для окна или буфера
"   options         - все параметры и маппинги (также глобальные значения для
"                       локальных опции)
"   resize          - размер окна Vim (количество строк и колонок)
"   sesdir          - каталог, в котором находится файл сеанса станет текущим
"                       каталогом (полезно для проектов, доступных по сети из
"                       разных систем)
"   slash           - обратный слеш '\' в именах файлов заменяется на '/'
"   tabpages        - все вкладки
"   terminal        - терминальные окна
"   unix            - с форматом конца строки Unix <NL>, даже в Windows или DOS
"   winpos          - позиция окна Vim
"   winsize         - размер окна Vim
" Type:
" Default: "blank,buffers,curdir,folds,help,options,tabpages,winsize,terminal"
set ssop=buffers,curdir,folds,help,options,tabpages,terminal,unix

" viewoptions, vop - что сохранять при ':mkview'
"   cursor          - позиция курсора
"   folds           - созданные складки методом manual, их состояние
"   options         - options and mappings local to a window or buffer (not
"   options         - параметры и маппинги локальные для окна или буфера
"                       (также НЕ глобальные значения для локальных опции)
"   localoptions    - тоже самое что и 'options'
"   slash           - обратный слеш '\' в именах файлов заменяется на '/'
"   unix            - с форматом конца строки Unix <NL>, даже в Windows или DOS
"   curdir          - текущая директория установленная командой ':lcd'
" Type: string
" Default: "folds,options,cursor,curdir"
set vop=cursor,folds,unix,curdir

" viewdir, vdir - каталог для хранения файлов ':mkview'
" directory where to store files with :mkview
" Type: string
" Default: "~/.vim/view"
set vdir=$HOME/.vim/view

" viminfo, vi - что сохранять в ~/.viminfo (см. :h 'viminfo')
" Type: string
" Default: "'100,<50,s10,h"
set vi='100,<50,s1024,h

" viminfofile, vif - имя файла viminfo. Если не пустая, то переодпределяет
" файл по умолчанию ~/.viminfo. Если установлено NONE, то viminfo не будет
" прочитан и записан
" Type: string
" Default: ""
" set vif=

" bufhidden, bh - указывает, что происходит, когда буфер больше не отображается
" в окне
"   hide    - скрыть буфер, не выгружая его, даже если опция 'hidden' не
"               установлена
"   unload  - выгрузить буфер, даже если опция 'hidden' установлена
"   delete  - удалить буфер  из списка буферов,  даже если опция 'hidden'
"               установлена
"   wipe    - удалить из списка буферов, даже если опция 'hidden' установлена
" Type: string
" Default: ""
" set bh=

" buftype, bt - определяет тип буфера: '', 'nofile', 'nowrite', 'acwrite',
" 'quickfix', 'help', 'terminal', 'prompt', 'popup'
" Type: string
" Default: ""
" set bt=

" buflisted, bl - отображается ли буфер в списке буферов
" whether the buffer shows up in the buffer list
" Type: boolean
" Default: on
" set bl

" debug - уровень вывода сообщений об ошибках
" Список из трех возможных значений:
"   msg     - отображать все сообщения об ошибках
"   throw   - все сообщения об ошибках и исключениях
"   beep    - звуковой сигнал
" Type: string
" Default: ""
" set debug=

" signcolumn, scl - колонка для меток с левой стороны окна
"   auto    показывать только при наличии меток
"   no      никогда не показывать
"   yes     всегда показывать
"   number  показывать метки в колонке с номерами строк
" Type: string
" Default: "auto"
set scl=yes

" luadll - имя динамической библиотеки lua
" Type: string
" Default: зависит от сборки
" set luadll=

" perldll - имя динамической библиотеки perl
" Type: string
" Default: зависит от сборки
" set perldll=

" pyxversion - установка версии python для использования pyx* функций и команд
"   0 - python 2 и 3
"   2 - только python 2
"   3 - только python 3
" Type: number
" Default: зависит от сборки
" set pyx=0

" pythondll - имя python2 динамической библиотеки
" Type: string
" Default: зависит от сборки
" set pythondll=libpython2.7.so.1.0

" pythonhome - Python 2 home directory
" Type: string
" Default: ""
" set pythonhome=

" pythonthreedll - имя python3 динамической библиотеки
" Type: string
" Default: зависит от сборки
" set pythonthreedll=libpython3.7m.so.1.0

" pythonthreehome - Python 3 home directory
" Type: string
" Default: ""
" set pythonthreehome=

" rubydll - имя динамической библиотеки ruby
" Type: string
" Default: зависит от сборки
" set rubydll=

" tcldll - имя динамической библиотеки tcl
" Type: string
" Default: зависит от сборки
" set tcldll=

" mzschemedll - имя динамической библиотеки MzScheme
" Type: string
" Default: зависит от сборки
" set mzschemedll=

" mzschemegcdll - имя динамической библиотеки MzScheme GC
" Type: string
" Default: зависит от сборки
" set mzschemegcdll=
