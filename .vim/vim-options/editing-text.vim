scriptencoding utf-8

" vint: -ProhibitAbbreviationOption

" undolevels, ul - максимальное количество изменений, которые можно отменить
" Type: number
" Default: 1000
" set ul=1000

" undofile, udf - автоматическое сохранение истории отмен в файл отмены.
" Каталог, в котором хранится файл отмены, указывается в опции 'undodir'
" Type: boolean
" Default: off
" set noudf

" undodir, udir   list of directories for undo files
" Type: string
" Default: "."
" set udir=.

" undoreload, ur - максимально количества строк для сохранения истории отмены
" при перезагрузке буфера командой ':e!'. Сохранение истории отмены произойдет
" если значение опции < 0 или если количество строк в буфере меньше значения
" опции. Установка в 0 отключает сохраниение истории отмены.
" Type: number
" Default: 10000
set ur=-1

" modified, mod - если установлена, буфер считается измененным
" Type: boolean
" Default: off
" set nomod

" readonly, ro - если установлена, то считается что буфер находится в режиме
" read-only
" Type: boolean
" Default: off
" set noro

" modifiable, ma - если выключен, то содержимое буфера не может быть изменено
" Type: boolean
" Default: on
" set ma

" textwidth, tw - максимальная ширина текста при его вставке. Более длинные
" строки будут переносится. Значение 0 отключает опцию.
" Type: number
" Default: 0
set tw=80

" wrapmargin, wm - отступ от правой границы окна, где будет начинаться
" перенос текста. Не будет использоваться, если включена опция 'textwidth'
" Type: number
" Default: 0
" set wm=0

" backspace, bs - устанавливает поведение клавиш <BS>, <Del>, <Ctrl-w>, <Ctrl-u>
" в insert mode
"   indent  - переход по отступам
"   eol     - разрешить соединять строки
"   start   - разрешить возврат в начало строки
" Type: string
" Default: ""
set bs=indent,eol,start

" comments, com - разделенный запятыми список строк, которые могут начинать
" строку комментария (формат комментариев)
" Type: string
" Default: "s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-"
" set com=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-

" formatoptions, fo - список флагов, устанавливающих методы и режими
" автоматического форматирования (см. :help fo-table)
"   t - автоперенос текста используя 'textwidth' параметр
"   c - автоперенос комментариев используя 'textwidth' параметр
"   q - разрешить форматирование комментариев используя 'gq'
" Type: string
" Default: "tcq"
" set fo=tcq

" formatlistpat, flp - шаблон для распознавания заголовка списка
" Type: string
" Default: "^\s*\d\+[\]:.)}\t ]\s*"
" set   flp=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*

" formatexpr, fex - выражение, используемое для команды форматирования
" строк 'gq'. Если опция пуста, то используется значение опции 'formatprg'
" Type: string
" Default: ""
" set fex=

" complete, cpt - определяет, как работает завершение режима вставки для
" <Ctrl-n> и <Ctrl-p> (тип завершения и места для сканирования)
"   .   - сканировать текущий буфер
"   w   - сканировать буферы из других окон
"   b   - сканировать другие загруженные буферы из списка буферов
"   u   - сканировать выгруженные буферы, которые находятся в списке буферов
"   U   - сканировать буферы, которых нет в списке буферов
"   k   - сканировать файлы, указанные с помощью опции 'dictionary'
"   kspell - использует текущую активную проверку орфографии
"   k{dict} сканирует файл {dict}. Можно указать несколько k флагов
"   s   - проверять файлы, заданные опцией 'thesaurus'
"   s{tsr} - сканирует файл {tsr}. Можно указать несколько флагов.
"   i   - сканировать текущие и include файлы
"   d   - сканировать текущие и include файлы на предмет определенного имени
"   ]   - tag completion
"   t   - то же самое что и ]
" Type: string
" Default: ".,w,b,u,t,i"
" set cpt=.,w,b,u,t,i

" completeopt, cot - когда и как использовать всплывающее меню автодополнения в
" insert mode
"   menu        - только при наличии более одного совпаденя
"   menuone     - даже когда есть только одно совпадение. Первое совпаденияе
"                   выделяется и вставляется в буфер
"   longest     - вместе с menuone не выделяет первое совпадение и не
"                   вставляет его в буфер
"   noinsert    - не вставлять в буфер первый пункт меню
"   noselect    - не выделять первый пункт меню
" Type: string
" Default: "menu,preview"
set cot=menuone

" pumheight, ph - максимальная высота (количество строк) всплывающего меню
" автодополнения в insert mode. Установка в 0 - использовать все доступное
" место на экране
" Type: number
" Default: 0
set ph=17

" pumwidth, pw - минимальная ширина всплывающего меню автодополнения в
" insert mode
" Type: number
" Default: 15
set pw=15

" completefunc, cfu - функция для автозавершения в insert mode (<Ctrl-n>)
" Type: string
" Default: ""
" set cfu=

" omnifunc, ofu - функция для автозавершения в insert mode в зависимости от
" типа файла (Omni Complete: <Ctrl-x><Ctrl-o>)
" Type: string
" Default: ""
" set ofu=

" dictionary, dict - разделенный запятыми список имен файлов, которые
" используются для поиска слов автозавершения по <Ctrl-x><Ctrl-k>
" Type: string
" Default: ""
" set dict=

" thesaurus, tsr - разделенный запятыми список файлов тезауруса для
" автозавершения ключевых слов по <Ctrl-x><Ctrl-t>
" Type: string
" Default: ""
" set tsr=

" infercase, inf - включить регистрозависимое автозавершение, если параметр
" 'ignorecase' включен
" Type: boolean
" Default: off
set inf

" digraph, dg - добавляет возможность ввода диграфов в insert mode.
" Все диграфы :digraphs
"   <Ctrl-k> a: --> ä
"   <Ctrl-k> e> --> ê
" Type: boolean
" Default: off
" set nodg

" tildeop, top - если включено команда '~' ведет себя как оператор
" Type: boolean
" Default: off
" set notop

" operatorfunc, opfunc - функция, которая будет вызываться по команде 'g@'
" (см. :help map-operator)
" Type: string
" Default: ""
" set opfunc=

" showmatch, sm - при вводе закрывающей скобки перескакивать на открывающую
" скобку на время, указанное в параметре 'matchtime'
" Type: boolean
" Default: off
" set nosm

" matchtime, mat - время в десятых секунды (10 = 1000ms) на которое курсор
" будет перескакивать на открывающую скобку, если установлен параметр
" 'showmatch'
" Type: number
" Default: 5 (500ms)
" set mat=5

" matchpairs, mps - список символов для парных скобок которые будет
" распознавать команда '%'
" Type: string
" Default: "(:),{:},[:]"
set mps=(:),{:},[:],<:>

" joinspaces, js - при склеивании двух строк командой 'J' вставлять два пробела,
" если первая строка заканчивается на '.', '?' или '!'
" Type: boolean
" Default: on
set nojs

" nrformats, nf - распознавание формата для команд <Ctrl-a> и <Ctrl-x>
" (инкремент и декремент символа под курсором)
"   alpha   - символ алфавита
"   octal   - восьмеричное
"   hex     - шестнадцатиричное
"   bin     - двоичное
" Type: string
" Default: "bin,octal,hex"
set nf=octal,hex,bin
