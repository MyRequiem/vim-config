scriptencoding utf-8

" vint: -ProhibitAbbreviationOption

" laststatus, ls - когда отображать строку статуса
"   0 - никогда
"   1 - когда есть минимум 2 окна (например разделение по вертикали)
"   2 - всегда
" Type: number
" Default: 1
set ls=2

" statusline, stl - формат отображения информации в строке состояния
"   Общий формат:
"       %-0{minwid}.{maxwid}{item}
"
"   f   - путь к файлу относительно текущей директории
"   F   - полный путь к файлу
"   t   - только имя файла
"   m|M - флаг, если файл изменен '[+]'/'+' и '[-]'/'-' для неизменяемых буферов
"   r|R - read-only флаг '[RO]'/'RO'.
"   h|H - флаг буфера справки [Help]/HLP
"   w|W - флаг окна предпросмотра '[Preview]'/PRV
"   q   - флаги '[Quickfix List]', '[Location List]'
"   y|Y - тип файла '[javascript]'/JAVASCRIPT
"   k   - название раскладки (значение 'b:keymap_name' or 'set keymap?'
"   n   - номер буфера
"   b|B - dec/hex код символа под курсором
"   o|O - dec/hex номер байта в файле под курсором
"   N   - номер страницы при печати
"   l   - номер текущей строки
"   L   - количество строк в буфере
"   c   - номер текущей колонки
"   v|V - номер виртуальной колонки
"   p|P - % текущей строки от общего количества строк|0% -> Top, 100% - Bot
"   {}  - выражение в фигурных скобках вставляется в строку статуса:
"           %{&filetype}
"           %{SomeFunc()}
"   ()  - в скобках опрелеляется группа для выравнивания ширины. Перед
"           закрывающей скобкой тоже ставится '%':
"               %10(%l%)
"   <   - обрезать строку в начале, если она слишком длинная
"   =   - все что после %=, будет выравниваться по правому краю статус бара
"           set stl=\ %F%=%y
"           | ~/tmp/vim/env.vim         ......                  [javascript]|
"   #   - установить группу для подсветки. Имя группы тоже должно заканчиваться
"           символом '#':
"               %#Search#
"           Подсветка устанавливается на все окна (текущее и не текущие)
"   *   - установить подсветку используя группы User1 - User9
"           Определяем группу подсветки UserN:
"               hi User1 term=... cterm=... ctermfg=... ctermbg=.... ...
"               %1* - установить подсветку
"               %0* - сбросить подсветку
"               set stl+=%1*%r%0* - read-only флаг '[RO]' будет другого цвета
"   %%  - символ процента
"
" Ширина номера строки будет не менее 4 символов:
"   set statusline=[%4l]                          => [   1], [  10], [ 100]
"   set statusline=Current:\ %4l\ Total:\ %4L     => Current:    8 Total:   13
"
" '-' будет выравнивать значение по левому краю:
"   set statusline=Current:\ %-4l\ Total:\ %-4L   => Current: 10   Total: 13
"
" Не заполненные значения (пробелы) можно заполнить нулями (перезаписывает '-'):
"   set statusline=Current:\ %04l\ Total:\ %04L   => Current: 0010 Total: 0013
"
" Установка максимальной ширины вывода:
"   set statusline=%F        => ~/tmp/vim/env.vim
"   установим максимальную ширину в 13 символов
"   set statusline=%.13F     => </vim/env.vim
"
" Type: string
" Default: ""
set stl=\ %.80F
set stl+=\ %r
set stl+=\ %h
set stl+=\ %w
set stl+=%=
set stl+=%#StatusFType#\ %{&filetype}
set stl+=\ %#StatusFFormat#%{&fileencoding}\ [%{&fileformat}]
set stl+=\ %#StatusFPos#[%06l:%02c/%06L][%03p%%]

" equalalways, ea - при добавлении/удалении окон устанавливать их одинаковый
" размер
" Type: boolean
" Default: on
" set ea

" eadirection, ead - когда применяется опция 'equalalways'
"   ver     - не выравнивать при разделении по вертикали (:vsplit)
"   hor     - не выравнивать при разделении по горизонтали (:split)
"   both    - всегда выравнивать
" Type: string
" Default: bottom
" set ead=both

" winheight, wh - минимальное количество строк, используемых для текущего окна
" Type: number
" Default: 1
" set wh=1

" winminheight, wmh - минимальная высота НЕ текущего окна
" Type: number
" Default: 1
" set wmh=1

" winfixheight, wfh - не изменять высоту окна при разделении по горизонтали
" (split), даже если установлена опция 'equalalways'
" Type: boolean
" Default: off
" set nowfh

" winfixwidth, wfw - не изменять ширину окна при разделении по вертикали
" (vsplit), даже если установлена опция 'equalalways'
" Type: boolean
" Default: off
" set nowfw

" winwidth, wiw - минимальное количество столбцов для текущего окна
" Type: number
" Default: 20
" set wiw=20

" winminwidth, wmw - минимальное количество столбцов для НЕ текущего окна
" Type: number
" Default: 1
" set wmw=1

" helpheight, hh - минимальная начальная высота окна справки (:help)
" Type: number
" Default: 20
" set hh=20

" previewheight, pvh - высота окна предпросмотра
" Type: number
" Default: 12
set pvh=20

" previewwindow, pvw - идентифицирует окно предварительного просмотра (если оно
" является текущим окном, то опция включена)
" Type: boolean
" Default: off
" set nopvw

" hidden, hid - не выгружать буфер, когда он больше не отображается в окне
" (например при смене буфера)
" Type: boolean
" Default: off
set hid

" switchbuf, swb - какое окно использовать при открытии буфера
" (например, когда открываем файл из quickfix, location list)
"   useopen - использовать последнее открытое окно
"   usetab  - как useopen, но также рассматриваются окна в другой вкладке
"   split   - в новом окне, разделенным по горизонтали
"   vsplit  - как split, но разделить по вертикали
"   newtab  - в новой вкладке
" Type: string
" Default: ""
set swb=useopen

" splitbelow, sb - новое окно располагается ниже текущего
" Type: boolean
" Default: off
set sb

" splitright, spr - новое окно располагается справа от текущего
" Type: boolean
" Default: off
set spr

" scrollbind, scb - синхронизированная прокрутка всех окон
" Type: boolean
" Default: off
" set noscb

" scrollopt, sbo - определяет как должна себя вести прокрутка в окнах при
" установленной опции 'scrollbind'
"   ver     - привязка вертикальной прокрутки
"   hor     - привязка горизонтальной прокрутки
"   jump    - применяется смещение между двумя окнами
" Type: string
" Default: "ver,jump"

" cursorbind, crb - курсор окна перемещается вместе с другими связанными окнами
" Type: boolean
" Default: off
" set nocrb

" termwinsize, tws - размер окна терминала
" Type: string
" Default: ""
" set tws=

" termwinkey, twk - клавиша переключения между окном встроенного терминала
" (':term') и буфером
" Type: string
" Default: "" (если не указано, используется <C-w>)
" set twk=

" termwinscroll, twsl - количество строк прокрутки, которые будут сохраняться
" в окне встроенного терминала (:term)
" Type: number
" Default: 10000
" set twsl=10000
