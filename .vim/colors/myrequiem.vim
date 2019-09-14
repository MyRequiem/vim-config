scriptencoding utf-8

highlight clear
if exists('syntax_on')
    syntax reset
endif

let g:colors_name = 'myrequiem'

" Info {{{1
"-------------------------------------------------------------------------------
" :help syntax                          - справка
" :source $VIMRUNTIME/syntax/hitest.vim - все параметры (скрипт выводит ошибку
"                                           если установлен параметр
"                                           wildcharm, wcm
" :hi                                   - показать все текущие группы
" :[verbose] hi <group_name>            - показать текущие параметры для группы
"-------------------------------------------------------------------------------
" foreground/background:
"   ctermfg/ctermbg - color terminal
"   guifg/guibg     - color GUI
" attributes:
"   term/cterm/gui  - reverse, bold, underline, undercurl, inverse, italic,
"                       standout, nocombine, strikethrough, NONE
" NR-16
" -----
" 0   Black
" 1   DarkBlue
" 2   DarkGreen
" 3   DarkCyan
" 4   DarkRed
" 5   DarkMagenta
" 6   Brown, DarkYellow
" 7   LightGray, Gray
" 8   DarkGray
" 9   Blue, LightBlue
" 10  Green, LightGreen
" 11  Cyan, LightCyan
" 12  Red, LightRed
" 13  Magenta, LightMagenta
" 14  Yellow, LightYellow
" 15  White 1}}}

" Highlights {{{1
" обычный текст
highlight Normal            term=NONE cterm=bold ctermfg=7    ctermbg=0    gui=NONE guisp=NONE guifg=#FFFFFF guibg=#000000
" темносерый на черном
highlight DarkGrayOnBlack   term=NONE cterm=bold ctermfg=0    ctermbg=0    gui=NONE guisp=NONE guifg=#555555 guibg=#000000
" сообщение '-- More --'
highlight MoreMsg           term=NONE cterm=NONE ctermfg=2    ctermbg=0    gui=NONE guisp=NONE guifg=#00AA00 guibg=#000000
" специальные символы: ^H, ^M, ^F, ^I, ...
highlight SpecialKey        term=NONE cterm=bold ctermfg=1    ctermbg=0    gui=NONE guisp=NONE guifg=#FF5555 guibg=#000000
" идентификаторы: var, this и т.д.
highlight Identifier        term=NONE cterm=NONE ctermfg=3    ctermbg=0    gui=NONE guisp=NONE guifg=#AA5500 guibg=#000000
" отображние текущего режима в командной строке '-- INSERT --', '-- VISUAL --', '-- REPLACE --' и т.д.
highlight ModeMsg           term=NONE cterm=bold ctermfg=2    ctermbg=0    gui=NONE guisp=NONE guifg=#55FF55 guibg=#000000
" номер строки
highlight LineNr            term=NONE cterm=bold ctermfg=6    ctermbg=0    gui=NONE guisp=NONE guifg=#55FFFF guibg=#000000
" окно терминала (:term)
highlight Terminal          NONE
" текущий пункт меню автодополнения команд
highlight WildMenu          term=NONE cterm=bold ctermfg=3    ctermbg=NONE gui=NONE guisp=NONE guifg=#FFFF55 guibg=NONE
" курсор (для GUI)
highlight Cursor            term=NONE cterm=NONE ctermfg=0    ctermbg=0    gui=NONE guisp=NONE guifg=#000000 guibg=#FFFFFF
" константы
highlight Constant          term=NONE cterm=bold ctermfg=4    ctermbg=0    gui=NONE guisp=NONE guifg=#5555FF guibg=#000000
" строки
highlight String            term=NONE cterm=bold ctermfg=5    ctermbg=0    gui=NONE guisp=NONE guifg=#FF55FF guibg=#000000
" колонка с левой стороны окна для меток: ошибки, предупреждения, метки git и т.д.
highlight SignColumn        term=NONE cterm=NONE ctermfg=6    ctermbg=0    gui=NONE guisp=NONE guifg=#00AAAA guibg=#000000
" целые числа
highlight Number            term=NONE cterm=NONE ctermfg=1    ctermbg=0    gui=NONE guisp=NONE guifg=#AA0000 guibg=#000000
if g:issuperuser
    " комментарии
    highlight Comment       term=NONE cterm=NONE ctermfg=1    ctermbg=0    gui=NONE guisp=NONE guifg=#AA0000 guibg=#000000
else
    highlight Comment       term=NONE cterm=NONE ctermfg=2    ctermbg=0    gui=NONE guisp=NONE guifg=#00AA00 guibg=#000000
endif

if g:term_256_color " {{{2
    " сиволы, которые отображаются в буфере но не присутствуют в тексте('»', '«', '¬', '@@@' и т.д.)
    highlight NonText           term=NONE cterm=NONE ctermfg=27   ctermbg=0    gui=NONE guisp=NONE guifg=#005FFF guibg=#000000
    " директории
    highlight Directory         term=NONE cterm=NONE ctermfg=172  ctermbg=0    gui=NONE guisp=NONE guifg=#D78700 guibg=#000000
    " предупреждения в командной строке
    highlight WarningMsg        term=NONE cterm=NONE ctermfg=51   ctermbg=0    gui=NONE guisp=NONE guifg=#00FFFF guibg=#000000
    " подсветка найденного шаблона
    highlight Search            term=NONE cterm=NONE ctermfg=15   ctermbg=20   gui=NONE guisp=NONE guifg=#FFFFFF guibg=#0000D7
    " выделение в режиме 'visual'
    highlight Visual            term=NONE cterm=NONE ctermfg=15   ctermbg=12   gui=NONE guisp=NONE guifg=#FFFFFF guibg=#5555FF
    " строка статуса активного/не активного окна
    highlight StatusLine        term=NONE cterm=NONE ctermfg=14   ctermbg=236  gui=NONE guisp=NONE guifg=#55FFFF guibg=#303030
    highlight StatusLineNC      term=NONE cterm=NONE ctermfg=8    ctermbg=236  gui=NONE guisp=NONE guifg=#555555 guibg=#303030
    " строка статуса активного/не активного окна терминала ':term'
    highlight StatusLineTerm    term=NONE cterm=NONE ctermfg=13   ctermbg=233  gui=NONE guisp=NONE guifg=#FF55FF guibg=#121212
    highlight StatusLineTermNC  term=NONE cterm=NONE ctermfg=8    ctermbg=233  gui=NONE guisp=NONE guifg=#555555 guibg=#121212
    " добавленная строка в vimdiff
    highlight DiffAdd           term=NONE cterm=NONE ctermfg=NONE ctermbg=22   gui=NONE guisp=NONE guifg=NONE    guibg=#005F00
    " измененная строка в vimdiff
    highlight DiffChange        term=NONE cterm=NONE ctermfg=NONE ctermbg=32   gui=NONE guisp=NONE guifg=NONE    guibg=#0087D7
    " удаленная строка в vimdiff
    highlight DiffDelete        term=NONE cterm=NONE ctermfg=7    ctermbg=88   gui=NONE guisp=NONE guifg=#AAAAAA guibg=#870000
    " измененный текст в vimdiff
    highlight DiffText          term=NONE cterm=NONE ctermfg=NONE ctermbg=19   gui=NONE guisp=NONE guifg=NONE    guibg=#0000AF
    " не распознанное слово при проверке орфографии
    highlight SpellBad          term=NONE cterm=NONE ctermfg=15   ctermbg=89   gui=NONE guisp=NONE guifg=#FFFFFF guibg=#87005F
    " слово, которое должно начинаться с заглавной буквы
    highlight SpellCap          term=NONE cterm=NONE ctermfg=15   ctermbg=33   gui=NONE guisp=NONE guifg=#FFFFFF guibg=#0087FF
    " слово на другом языке
    highlight SpellLocal        term=NONE cterm=NONE ctermfg=15   ctermbg=22   gui=NONE guisp=NONE guifg=#FFFFFF guibg=#005F00
    " цвет колонки, указанной в параметре 'colorcolumn'
    highlight ColorColumn       term=NONE cterm=NONE ctermfg=NONE ctermbg=236  gui=NONE guisp=NONE guifg=NONE    guibg=#303030
    " колонка где находится курсор (см. 'cursorcolumn')
    highlight CursorColumn      term=NONE cterm=NONE ctermfg=NONE ctermbg=237  gui=NONE guisp=NONE guifg=NONE    guibg=#3A3A3A
    " всплывающее меню
    highlight Pmenu             term=NONE cterm=NONE ctermfg=244  ctermbg=235  gui=NONE guisp=NONE guifg=#808080 guibg=#262626
    " текущий пункт во всплывающем меню
    highlight PmenuSel          term=NONE cterm=NONE ctermfg=15   ctermbg=60   gui=NONE guisp=NONE guifg=#FFFFFF guibg=#5F5F87
    " бегунок в скроллбаре всплывающего меню
    highlight PmenuThumb        term=NONE cterm=NONE ctermfg=NONE ctermbg=240  gui=NONE guisp=NONE guifg=NONE    guibg=#585858
    " не активная вкладка
    highlight TabLine           term=NONE cterm=NONE ctermfg=15   ctermbg=242  gui=NONE guisp=NONE guifg=#FFFFFF guibg=#6C6C6C
    " свободное место строки вкладок
    highlight TabLineFill       term=NONE cterm=NONE ctermfg=NONE ctermbg=238  gui=NONE guisp=NONE guifg=NONE    guibg=#444444
    " строка со свернутым текстом (folding)
    highlight Folded            term=NONE cterm=NONE ctermfg=94   ctermbg=0    gui=NONE guisp=NONE guifg=#875F00 guibg=#000000
    " парные скобки: (), [], {}
    highlight MatchParen        term=NONE cterm=NONE ctermfg=NONE ctermbg=241  gui=NONE guisp=NONE guifg=NONE    guibg=#626262
    " тип файла в status bar
    highlight StatusFType       term=NONE cterm=NONE ctermfg=14   ctermbg=236  gui=NONE guisp=NONE guifg=#00AAAA guibg=#303030
    " формат файла в status bar: utf-8 [unix]
    highlight StatusFFormat     term=NONE cterm=NONE ctermfg=7    ctermbg=236  gui=NONE guisp=NONE guifg=#AAAAAA guibg=#303030
    " позиция курсора в status bar
    highlight StatusFPos        term=NONE cterm=NONE ctermfg=15   ctermbg=236  gui=NONE guisp=NONE guifg=#FFFFFF guibg=#303030
    " атрибуты html тэгов
    highlight Type              term=NONE cterm=NONE ctermfg=121  ctermbg=0    gui=NONE guisp=NONE guifg=#87FFAF guibg=#000000
    " ключевые слова
    highlight Keyword           term=NONE cterm=NONE ctermfg=81   ctermbg=0    gui=NONE guisp=NONE guifg=#5FD7FF guibg=#000000
    " TODO, FIXME, XXX
    highlight Todo              term=NONE cterm=NONE ctermfg=9    ctermbg=19   gui=NONE guisp=NONE guifg=#FF5555 guibg=#0000AF

    " текущая строка
    if &diff
        " в vimdiff не подсвечиваем текущую строку
        highlight CursorLine    NONE
    else
        highlight! link CursorLine CursorColumn
    endif

    if g:issuperuser
        " колонка вертикального разделения буферов
        highlight! link VertSplit DarkGrayOnBlack
    else
        highlight VertSplit     term=NONE cterm=NONE ctermfg=0 ctermbg=242 gui=NONE guisp=NONE guifg=#000000 guibg=#6C6C6C
    endif

    " скроллбар всплывающего меню
    highlight! link PmenuSbar ColorColumn
    " 2}}}
else " {{{2
    highlight NonText           term=NONE cterm=bold         ctermfg=4    ctermbg=0    gui=NONE guisp=NONE guifg=NONE guibg=NONE
    highlight Search            term=NONE cterm=bold         ctermfg=7    ctermbg=4    gui=NONE guisp=NONE guifg=NONE guibg=NONE
    highlight Visual            term=NONE cterm=bold,inverse ctermfg=4    ctermbg=0    gui=NONE guisp=NONE guifg=NONE guibg=NONE
    highlight DiffAdd           term=NONE cterm=bold         ctermfg=7    ctermbg=2    gui=NONE guisp=NONE guifg=NONE guibg=NONE
    highlight DiffDelete        term=NONE cterm=NONE         ctermfg=7    ctermbg=1    gui=NONE guisp=NONE guifg=NONE guibg=NONE
    highlight DiffText          term=NONE cterm=bold         ctermfg=7    ctermbg=1    gui=NONE guisp=NONE guifg=NONE guibg=NONE
    highlight SpellBad          term=NONE cterm=bold         ctermfg=7    ctermbg=5    gui=NONE guisp=NONE guifg=NONE guibg=NONE
    highlight CursorColumn      term=NONE cterm=bold,reverse ctermfg=0    ctermbg=NONE gui=NONE guisp=NONE guifg=NONE guibg=NONE
    highlight Pmenu             term=NONE cterm=bold,reverse ctermfg=0    ctermbg=7    gui=NONE guisp=NONE guifg=NONE guibg=NONE
    highlight PmenuSel          term=NONE cterm=bold         ctermfg=7    ctermbg=6    gui=NONE guisp=NONE guifg=NONE guibg=NONE
    highlight PmenuSbar         term=NONE cterm=NONE         ctermfg=NONE ctermbg=7    gui=NONE guisp=NONE guifg=NONE guibg=NONE
    highlight PmenuThumb        term=NONE cterm=bold,reverse ctermfg=4    ctermbg=NONE gui=NONE guisp=NONE guifg=NONE guibg=NONE
    highlight Folded            term=NONE cterm=NONE         ctermfg=3    ctermbg=0    gui=NONE guisp=NONE guifg=NONE guibg=NONE
    highlight StatusFFormat     term=NONE cterm=NONE         ctermfg=7    ctermbg=0    gui=NONE guisp=NONE guifg=NONE guibg=NONE
    highlight StatusFPos        term=NONE cterm=bold         ctermfg=7    ctermbg=0    gui=NONE guisp=NONE guifg=NONE guibg=NONE
    highlight Keyword           term=NONE cterm=NONE         ctermfg=6    ctermbg=0    gui=NONE guisp=NONE guifg=NONE guibg=NONE
    highlight Todo              term=NONE cterm=NONE         ctermfg=1    ctermbg=4    gui=NONE guisp=NONE guifg=NONE guibg=NONE
    highlight CursorLine        NONE

    highlight! link Directory           Identifier
    highlight! link StatusLine          LineNr
    highlight! link StatusLineNC        DarkGrayOnBlack
    highlight! link StatusLineTerm      String
    highlight! link StatusLineTermNC    DarkGrayOnBlack
    highlight! link VertSplit           DarkGrayOnBlack
    highlight! link WarningMsg          NonText
    highlight! link DiffChange          Search
    highlight! link SpellCap            Search
    highlight! link SpellLocal          DiffAdd
    highlight! link TabLine             Pmenu
    highlight! link TabLineFill         ColorColumn
    highlight! link ColorColumn         CursorColumn
    highlight! link MatchParen          CursorColumn
    highlight! link StatusFType         LineNr
    highlight! link Type                Keyword
endif " 2}}}
" 1}}}

" Links {{{1
" подсветка ошибок синтаксиса в тексте
highlight! link Error           SpecialKey
" сообщения об ошибке в командной строке
highlight! link ErrorMsg        SpecialKey
" скрытые символы
highlight! link Conceal         DarkGrayOnBlack
" редкое слово (слово, которое почти никогда не используется)
highlight SpellRare NONE
" номер текущей строки
highlight! link CursorLineNr    SpecialKey
" backslash, specialTag, specialChar, delimiter
highlight! link Special         SpecialKey
" case, default
highlight! link Label           SpecialKey
" other syntax
highlight! link Tag             SpecialKey
highlight! link SpecialChar     SpecialKey
highlight! link Delimiter       SpecialKey
highlight! link Debug           SpecialKey
" заполнение строк симоволом '~' после последней строки буфера
highlight! link EndOfBuffer     NonText
" функции
highlight! link Function        Identifier
" true, false
highlight! link Boolean         Identifier
" подсветка найденного при наборе шаблона инкрементного поиска
highlight! link IncSearch       Search
" выделение в режиме 'visual', но выделял текст не сам Vim
highlight! link VisualNOS       Search
" вопрос с выбором [Да/нет]
highlight! link Question        MoreMsg
" заголовок вывода таких команд как ':set all', ':autocmd'
highlight! link Title           ModeMsg
" typeof, new, =, *=, += и т.д.
highlight! link Operator        ModeMsg
" метки свернутого текста слева окна (если 'foldcolumn' > 0)
highlight! link FoldColumn      LineNr
" активная вкладка
highlight! link TabLineSel      StatusLine
" if, then, else, endif, switch, continue, break и т.д.
highlight! link Conditional     WildMenu
" циклы for, do, while
highlight! link Repeat          WildMenu
" try, catch
highlight! link Exception       WildMenu
" любые другие объявления
highlight! link Statement       WildMenu
" специальные комментарии
highlight! link SpecialComment  Comment
" как Cursor, но при language-mapping
highlight! link lCursor         Cursor
" как Cursor, но при IME режиме ввода (для Windows)
highlight! link CursorIM        Cursor
" символы
highlight! link Character       String
" числа с плавающей запятой
highlight! link Float           Number
" other syntax
highlight! link StorageClass    Type
highlight! link Structure       Type
highlight! link Typedef         Type
highlight! link PreProc         Keyword
highlight! link Underlined      Keyword
highlight! link Include         Keyword
highlight! link Define          Keyword
highlight! link Macro           Keyword
highlight! link PreCondit       Keyword
" 1}}}
