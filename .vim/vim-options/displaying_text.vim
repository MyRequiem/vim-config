scriptencoding utf-8

" vint: -ProhibitAbbreviationOption

" scroll, scr - количество строк для прокрутки клавишами Ctrl-u и Ctrl-d
" Type: number
" Default: автоматически устанавливается на половину окна (если значение
"           изменено, то сбросить на default можно установив 'set scr=0')
" set scr=25

" scrolloff, so - количество строк, которые будут всегда видны сверху и снизу
" экрана
" Type: number
" Default: 0
set so=3

" wrap - перенос строк, которые не умещаются на экране
" Type: boolean
" Default: on
" set wrap

" linebreak, lbr - перенос строки без разрыва слов
" (учитываются символы опции 'breakat')
" Type: boolean
" Default: off
set lbr

" breakindent, bri - разрешить отступы для перенесенных строк. Для
" дополнительной настройки используется опция 'breakindentopt'
" Type: boolean
" Default: off
set bri

" breakindentopt, briopt - корректировка поведения для опции 'breakindent'
"   min:{n}     - минимальная ширина текста, которая будет сохранена
"                   (default: 20)
"   shift:{n}   - начало перенесенной строки будет смещено на заданное число
"                   колонок (default: 0)
" Type: string
" Default: ""
" set briopt=
set briopt=min:1,shift:2

" breakat, brk - какие символы вызвают разрыв строки. Символы после '!'
" наоборот не могут вызывать разрыв
" Type: string
" Default: " ^I!@*-+;:,./?"
" set brk=\ ^I!@*-+;:,./?

" showbreak, sbr - метка, помещаемая перед перенесенной строкой
" Например:
"   |
"   |Длинная строка ................
"   |  >> продолжение длинной строки
"   |
" Type: string
" Default: ""
set sbr=>>\ 

" sidescroll, ss - сдвиг строки по горизонтали, когда курсор выходит за границы
" экрана на длинной строке. Используется только если опция 'wrap' отключена.
" Type: number
" Default: 0 (курсор переходит на середину экрана)
set ss=1

" sidescrolloff, siso - количество столбцов, которые будут всегда видны справа
" и слева экрана при перемещении курсора, если длина строки больше ширины
" экрана
" Type: number
" Default: 0
set siso=7

" display, dy - режим отображения текста (список параметров через запятую)
"   lastline    - при установленной опции 'wrap' если строка не помещается на
"                   экране (строка очень длинная), то в конце последней строки
"                   экрана будут отображаться символы '@@@'
"   truncate    - как и lastline, только '@@@' будут отображаться в начале
"                   последней строки экрана
"   uhex        - показывать вместо непечатаемых символов их шестрадцатиричный
"                   код. Например вместо '^M' отображать '<0d>'
" Type: string
" Default: ""
set dy=truncate

" fillchars, fcs - символы для заполнения некоторых элементов интерфейса:
"   fold:   - свернутый текст
"               (default: '-')
"   stl:    - пустое пространство статусной стороки текущего буфера/окна
"               (default: ' ')
"   stlnc:  - пустое пространство статусной стороки НЕ текущего буфера/окна
"               (default: ' ')
"   vert:   - заполнение вертикальных разделителей буферов
"               (default: '|')
"   diff:   - удаленные строки в vimdiff
"               (default: '-')
"
" Любой параметр, который пропущен при указании списка в опции, вернется к
" значению по умолчанию.
"
" highlighting groups:
" fold:     Folded
" stl:      StatusLine
" stlnc:    StatusLineN
" vert:     VertSplit
" diff:     DiffDelete
" Type: string
" Default: "fold:-,vert:|,"
set fcs=fold:-,stl:\ ,stlnc:\ ,vert:\|,diff:-

" cmdheight, ch - количество строк, используемых для командной строки
" Type: number
" Default: 1
" set ch=1

" columns, co - количество колонок
" Type: number
" Default: для консольной версии Vim ширина терминала, для GVim ширина дисплея
if g:isgvim
    set co=182
endif

" lines - количество строк
" Type: number
" Default: для консольной версии Vim высота терминала, для GVim высота дисплея
if g:isgvim
    set lines=50
endif

" window, wi - высота окна. Используется при прокрутке клавишами Ctrl-f и Ctrl-b
" Type: number
" Default: высота терминала/окна - 1
" set window=51

" lazyredraw, lz - не перерисовывать экран при выполнении макросов
" Type: boolean
" Default: off
" set nolz

" redrawtime, rdt - время в ms для перерисовки дисплея при выполнении
" команд 'hlsearch', ':match' and syntax highlighting
" Type: number
" Default: 2000
" set rdt=2000

" writedelay, wd - задержка вывода вводимого символа на экран (ms)
" Type: number
" Default: 0
" set wd=0

" list - отображение табуляций, концов строк, завершающих пробелов,
" скрытых символов и др. символами, указанными в опции 'listchars'
" Type: boolean
" Default: off
" set nolist

" listchars, lcs - список символов, используемых для опции 'list'
"   eol:        - конец строки
"   tab:        - табуляция: 2 или 3 символа (третий не обязателен)
"   space:      - пробелы
"   trail:      - завершающие пробелы
"   extends:    - символ для отображения продолжения строки вправо за пределы
"                   экрана, если параметр 'wrap' выключен
"   extends:    - символ для отображения продолжения строки влево за пределы
"                   экрана, если параметр 'wrap' выключен
"   conceal:    - символ отображающийся вместо скрытого текста
"                   (если 'conceallevel' установлен в 1)
"   nbsp:       - символ для отображения неразрывных пробелов
" Type: string
" Default: "eol:$"
set lcs=eol:¬,tab:T-,extends:»,precedes:«,conceal:*

" number, nu - отображать номера строк
" Type: boolean
" Default: off
set nu

" relativenumber, rnu - отображать номера строк рассчитанные
" относительно курсора
" Type: boolean
" Default: off
" set nornu

" numberwidth, nuw - ширина (количество колонок) для номеров строк
" Type: number
" Default: 4
set nuw=7

" conceallevel, cole - режим отображения скрытого текста (например синтаксис
"                       заголовков справки Vim скрыт). Работает только при
"                       :syntax on
"   0   - отображается
"   1   - каждый блок скрытого текста заменяется символом, указанным в
"           параметре 'listchars'
"   2   - скрыт полностью, если у него не определен символ замены
"           (см. :help syn-cchar)
"   3   - скрыт полностью
" Type: number
" Default: 0
set cole=3

" concealcursor, cocu - режимы, в которых скрытый текст под курсором тоже будет
" скрыт
"   n   normal mode
"   v   visual mode
"   i   insert mode
"   c   command line editing
" Type: string
" Default: ""
set cocu=nic
