scriptencoding utf-8

" vint: -ProhibitAbbreviationOption

" whichwrap, ww - разрешить клавишам перемещения переходить на
" следующую/предыдущую строку, когда курсор достигает конца/начала строки
" Type: string
"   char    key         mode
"   ----    ----        ----
"   b       <BS>        Normal and Visual
"   s       <Space>     Normal and Visual
"   h       'h'         Normal and Visual (not recommended)
"   l       'l'         Normal and Visual (not recommended)
"   <       <Left>      Normal and Visual
"   >       <Right>     Normal and Visual
"   ~       '~'         Normal
"   [       <Left>      Insert and Replace
"   ]       <Right>     Insert and Replace
" Default: b,s
" Например, разрешить переход, только если используем стрелки:
" :set ww=<,>,[,]
set ww=

" startofline, sol - команды передвижения курсора Ctrl-d, Ctrl-u, Ctrl-b,
" Ctrl-f, 'G', 'H', 'M', 'L', 'gg' передвигают курсор на первый символ строки,
" если опция установлена. Если не установлена - колонка, где находится курсор
" при передвижении не меняется
" Type: boolean
" Default: on
set sol

" paragraphs, para - определяет макросы nroff, которые разделяют абзацы
" Type: string
" Default: "IPLPPPQPP TPHPLIPpLpItpplpipbp"
" set para=IPLPPPQPP\ TPHPLIPpLpItpplpipbp

" sections, sect - определяет макросы nroff для распознавания разделов. По
" умолчанию раздел начинается в макросах nroff .SH, .NH, .H, .HU, .nh и .sh
" Type: string
" Default: "SHNHH HUnhsh"
" set sect=SHNHH\ HUnhsh

" path, pa - список каталогов, в которых будет производится поиск файлов при
" использовании команд 'gf', ':find', ':sfind', ':tabfind' и др.
" Type: string
" Default: ".,/usr/include,,"
" .     - поиск относительно текущего каталога
" ,,    - поиск в текущем каталоге
" set pa=.,/usr/include,,

" cdpath, cd - список каталогов, поиск в которых будет производится при
" использовании команд ':cd', ':tcd', ':lcd'
" Type: string
" Default: ",,"
" ,,    - поиск в текущем каталоге
" set cd=,,

" autochdir, acd - если установлено, то при открытии файла, смены буфера и т.д.
" текущий рабочий каталог будет изменяться на директорию открытого файла
" Type: boolean
" Default: off
" set noacd

" wrapscan, wc - поиск начинается сначала при достижении конца буфера
" Type: boolean
" Default: on
" set ws

" incsearch, is - при поиске подсвечивать совпадения во время ввода паттерна
" Type: boolean
" Default: off
set is

" magic - режим и способ экранирования специальных символов обратным слешем
" (рекомендуется)
" Type: boolean
" Default: on
" set magic

" regexpengine, re - движок обработки регулярных выражений
"   0   - автоматический выбор (рекомендуется)
"   1   - старый движок
"   2   - NFA движок
" Type: number
" Default: 0
" set re=0

" ignorecase, ic - регистронезависимые паттерны (поиск и т.д.)
" Type: boolean
" Default: off
" set noic

" smartcase, scs - переопределяет опцию 'ignorecase', если шаблон поиска
" содержит символы в верхнем регистре (используется только при наборе шаблона
" и при включенной опции 'ignorecase').
" Type: boolean
" Default: off
" set noscs

" casemap, cmp - метод смены регистра символов
"   internal  - использовать встроенные функции изменения регистра вместо
"               towupper() и towlower() из системной библиотеки
"   keepascii -для символов ASCII использовать US, если символа нет в текущей
"               локали (вероятно, имеет значение только для турецкого языка)
" Type: string
" Default: "internal,keepascii"
set cmp=internal

" maxmempattern,mmp - максимальный объем памяти в килобайтах, используемый для
" сопоставления с образцом (pattern для поиска и т.д.)
" Type: number
" Default: 1000
set mmp=512

" define, def - шаблон, который будет использоваться для поиска
" макроопределений 'define' (по умолчанию для C программ)
" Type: string
" Default: "^\s*#\s*define"
" set def=^\\s*#\\s*define

" include, inc - паттерн для поиска команды 'include'
" Type: string
" Default: "^\s*#\s*include"
" set inc=^\\s*#\\s*include

" includeexpr, inex - выражение, используемое для преобразования строки команды
" 'include' в имя файла (в основном полезно для Java)
" Type: string
" Default: ""
" set inex=
