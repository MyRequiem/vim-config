scriptencoding utf-8

" vint: -ProhibitAbbreviationOption

" background, bg - темный или светлый фон
" Type: string (может иметь только 2 значения)
" Default: "dark" или "light" в зависимости от используемого терминала
set bg=dark

" filetype, ft - если установлено, то запускается событие автокоманд FileType
" Type: string
" Default: ""
" set ft=

" syntax, syn - имя используемой подсветки синтаксиса
" Type: string
" Default: ""
" set syn=

" synmaxcol, smc - максимальный столбец, после которого подсветка синтаксиса
" перестает работать, но в таком случае и следующие строки могут быть
" подсвечены не верно. Установка в 0 снимает ограничения.
" Type: number
" Default: 3000
set smc=500

" highlight, hl - используется для установки режима подсветки различных
" объектов. Это разделенный запятыми список пар символов
" Type: string
" Default: "8:SpecialKey,~:EndOfBuffer,@:NonText,
"           d:Directory,e:ErrorMsg,i:IncSearch,
"           l:Search,m:MoreMsg,M:ModeMsg,n:LineNr,
"           N:CursorLineNr,r:Question,s:StatusLine,
"           S:StatusLineNC,c:VertSplit,t:Title,
"           v:Visual,V:VisualNOS,w:WarningMsg,
"           W:WildMenu,f:Folded,F:FoldColumn,
"           A:DiffAdd,C:DiffChange,D:DiffDelete,
"           T:DiffText,>:SignColumn,-:Conceal,
"           B:SpellBad,P:SpellCap,R:SpellRare,
"           L:SpellLocal,+:Pmenu,=:PmenuSel,
"           x:PmenuSbar,X:PmenuThumb,*:TabLine,
"           #:TabLineSel,_:TabLineFill,!:CursorColumn,
"           .:CursorLine,o:ColorColumn,q:QuickFixLine,
"           z:StatusLineTerm,Z:StatusLineTermNC"
"
" SpecialKey      - (8) meta и другие специальные клавиши
" EndOfBuffer     - (~) строки после последней строки буфера
" NonText         - (@) символ внизу окна (см. опцию 'showbreak')
" Directory       - (d) директории
" ErrorMsg        - (e) сообщения об ошибке
" IncSearch       - (i) 'incsearch' highlighting
" Search          - (l) подсветка последнего найденного шаблона (см. 'hlsearch')
" MoreMsg         - (m) сообщение '-- More --'
" ModeMsg         - (M) '-- INSERT --', '-- VISUAL --', '-- REPLACE --'
" LineNr          - (n) номер строки
" CursorLineNr    - (N) номер текущей строки
" Question        - (r) вопрос с выбором [Да/нет]
" StatusLine      - (s) строка статуса активного окна
" StatusLineNC    - (S) строка статуса НЕ активного окна
" VertSplit       - (c) колонка вертикального разделения буферов
" Title           - (t) заголовок вывода таких команд как ':set all', ':autocmd'
" Visual          - (v) выделение в режиме 'visual'
" VisualNOS       - (V) выделение в режиме 'visual', но выделял текст не сам Vim
" WarningMsg      - (w) предупреждения
" WildMenu        - (W) текущий пункт меню автодополнения команд по <Tab>
" Folded          - (f) строка со свернутым текстом (folding)
" FoldColumn      - (F) метки свернутого текста если 'foldcolumn' > 0
" DiffAdd         - (A) добавленная строка в vimdiff
" DiffChange      - (C) измененная строка в vimdiff
" DiffDelete      - (D) удаленная строка в vimdiff
" DiffText        - (T) добавленный текст в vimdiff
" SignColumn      - (>) колонка с права для меток (см. 'signcolumn')
" Conceal         - (-) скрытые символы (см. 'conceallevel')
" SpellBad        - (B) слово с ошибкой при проверке орфографии
" SpellCap        - (P) слово, которое должно начинаться с заглавной буквы
" SpellRare       - (R) редкое слово
" SpellLocal      - (L) слово на другом языке
" Pmenu           - (+) строки во всплывающем меню
" PmenuSel        - (=) текущая строка во всплывающем меню
" PmenuSbar       - (x) скроллбар всплывающего меню
" PmenuThumb      - (X) бегунок в скроллбаре всплывающего меню
" TabLine         - (*) НЕ активная вкладка
" TabLineSel      - (#) активная вкладка
" TabLineFill     - (_) свободное место строки вкладок
" CursorColumn    - (!) колонка где находится курсор (см. 'cursorcolumn')
" CursorLine      - (.) строка где находится курсор (см. 'cursorline')
" ColorColumn     - (o) цвет колонки, указанной в параметре 'colorcolumn'
" QuickFixLine    - (q) тукущий выбранный пункт в окне quickfix
" StatusLineTerm  - (z) строка статуса активного окна терминала
" StatusLineTermNC- (Z) строка статуса НЕ активного окна терминала
" Cursor          - курсор (для GUI)
" lCursor         - как Cursor, но при language-mapping (см. 'guicursor')
" CursorIM        - как Cursor, но при IME режиме ввода (для Windows)
" MatchParen      - парные скобки
" Normal          - обычный текст
"
" The display modes are: reverse, italic, bold, standout, underline, undercurl,
" strikethrough
"
" set hl=8:SpecialKey,~:EndOfBuffer,@:NonText,d:Directory,e:ErrorMsg,i:IncSearch,l:Search,m:MoreMsg,M:ModeMsg,n:LineNr,N:CursorLineNr,r:Question,s:StatusLine,S:StatusLineNC,c:VertSplit,t:Title,v:Visual,V:VisualNOS,w:WarningMsg,W:WildMenu,f:Folded,F:FoldColumn,A:DiffAdd,C:DiffChange,D:DiffDelete,T:DiffText,>:SignColumn,-:Conceal,B:SpellBad,P:SpellCap,R:SpellRare,L:SpellLocal,+:Pmenu,=:PmenuSel,x:PmenuSbar,X:PmenuThumb,*:TabLine,#:TabLineSel,_:TabLineFill,!:CursorColumn,.:CursorLine,o:ColorColumn,q:QuickFixLine,z:StatusLineTerm,Z:StatusLineTermNC

" hlsearch, hls - подсветка последнего найденного паттерна
" Type: boolean
" Default: off
set hls

" wincolor, wcr - использовать имя группы вместо группы Normal для окна.
" Например, вместо группы Normal будет использоваться SomeGroup:
"   hi SomeGroup cterm=NONE ctermfg=2 ctermbg=3
"   set wcr=SomeGroup
" Type: string
" Default: ""
" set wcr=

" termguicolors, tgc - использовать в терминале цвета, определенные для GUI
" Type: boolean
" Default: off
" set notgc

" cursorcolumn, cuc - включить подсветку текущей колонки
" Type: boolean
" Default: off
" set nocuc

" cursorline, cul - включить подсветку текущей строки и ее номера
" Type: boolean
" Default: off
set cul

" colorcolumn, cc - подсвечивать указанные через запятую номера колонок. Можно
" указывать номера относительно параметра 'textwidth':
"   set cc=81       подсветить 80 колонку
"   set cc=30,81    подсветить 30 и 80 колонку
"   set cc=+1       textwidth+1
"   set cc=-1       textwidth-1
" Type: string
" Default: ""
set cc=81

" spell - включить проверку орфографии и подсвечивать ошибки
" Type: boolean
" Default: off
" set nospell

" spelllang - список языков для проверки орфографии
" Type: string
" Default: en
set spl=en_us,ru_ru

" spellfile, spf - имя файла, в который будут добавляться слова по командам
" 'zg' и 'zw' (добавляют слово под курсором в словарь)
" Type: string
" Default: ""
set spf=$HOME/.vim/spell/added-by-user.utf-8.add

" spellcapcheck, spc - шаблон для поиска конца предложения. Если новое
" предложение начинается с маленькой буквы, то она будет подсвечиваться как
" предупреждение. Для отключения такой проверки, нужно установить пустую
" строку.
" Type: string
" Default: "[.?!]\_[\])'" \t]\+"
" set spc=[.?!]\_[\])'"^I ]\+

" spellsuggest, sps - метод, используемый для предложения исправлений слов
"   best    - лучше всего подходит для английского языка
"   double  - использует два метода и смешивает результаты
"               (может быть медленным и не всегда дает точные результаты)
"   fast    - проверяет только одно слово и не анализирует все предложение
" Type: string
" Default: "best"
set sps=fast

" mkspellmem, msm -  количество памяти, используемой командой ':mkspell'
" перед сжатием
" Type: string
" Default: "460000,2000,500"
" set msm=460000,2000,500
