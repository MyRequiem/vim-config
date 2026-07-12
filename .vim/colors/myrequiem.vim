vim9script

g:colors_name = 'myrequiem'

# Info
#-------------------------------------------------------------------------------
# :help syntax                          - справка
# :source $VIMRUNTIME/syntax/hitest.vim - все параметры (скрипт выводит ошибку
#                                           если установлен параметр
#                                           wildcharm, wcm
# :highlight                            - показать все текущие группы
# :[verbose] highlight <group_name>     - показать текущие параметры для группы
#-------------------------------------------------------------------------------

# ==============================================================================
# КОМАНДА ДЛЯ ОТЛАДКИ ЦВЕТОВ (Инспектор синтаксиса под курсором).
# Наведи курсор на любое слово и выполни :ColorSpy
# Выведет: имя текущей группы -> к какой базовой группе она привязана (линк)
# Например окраска слова struct:
#    Текст: 'struct' | Группа: cStructure -> Линк на: Type
# ==============================================================================
command! ColorSpy echo "Текст: '" .. expand("<cword>") .. "' | Группа: " .. synIDattr(synID(line('.'), col('.'), 1), 'name') .. " -> Линк на: " .. synIDattr(synIDtrans(synID(line('.'), col('.'), 1)), 'name')

# term, termfg, termbg     - для старых черно-белых терминалов
# cterm, ctermfg, ctermbg  - для цветных терминалов
# gui, guifg, guibg        - для графического режима (gvim)
#
# Значения cterm и gui:
#    reverse, bold, underline, undercurl, inverse, italic, standout,
#    nocombine, strikethrough, NONE
#
# 0  Black       #000000
# 1  DarkRed     #AA0000
# 2  DarkGreen   #00AA00
# 3  DarkYellow  #AA5500
# 4  DarkBlue    #0000AA
# 5  DarkMagenta #AA00AA
# 6  DarkCyan    #00AAAA
# 7  LightGray   #AAAAAA
# 8  DarkGray    #555555
# 9  Red         #FF5555
# 10 Green       #55FF55
# 11 Yellow      #FFFF55
# 12 Blue        #5555FF
# 13 Magenta     #FF55FF
# 14 Cyan        #55FFFF
# 15 White       #FFFFFF

# Сбрасываем цвета всех установленных из коробки цветовых групп Vim в значения
# по умолчанию. Новые группы, которые неизвестны Vim (например, добавленные
# пользователем вручную или плагинами) останутся, но будут сброшены:
# MyGroup xxx ctermfg=14 ctermbg=7 => MyGroup xxx cleared"
highlight clear
if exists('syntax_on')
    # Перезапускаем движок синтаксиса, чтобы плагины и языки заново применили
    # свои правила разметки.
    syntax reset
endif

# Тотальная зачистка эффектов (bold, underline, reverse) только для реальных
# групп. Ссылки (links) этот цикл не трогает.
for group in getcompletion('', 'highlight')
    # hlID(group)  - внутренний уникальный ID текущей проверяемой группы
    # synIDtrans() - пытается разрешить ссылку. Если группа Character ссылается
    #    на String, то для Character функция вернет ID группы String. В итоге
    #    ID группы Character != ID группы String -> значит ссылка
    if hlID(group) == synIDtrans(hlID(group))
        execute($'highlight {group} term=NONE cterm=NONE gui=NONE')
    endif
endfor
# ------------------------------------------------------------------------------
highlight Normal ctermfg=15 ctermbg=0 guifg=#FFFFFF guibg=#000000
# ------------------------------------------------------------------------------
if g:term_256_color
    # Base:
    highlight LineNr            ctermfg=14   ctermbg=0    guifg=#55FFFF guibg=#000000 # номера строк
    highlight CursorLineNr      ctermfg=9    ctermbg=0    guifg=#FF5555 guibg=#000000 # номер текущей строки
    highlight ColorColumn       ctermfg=NONE ctermbg=236  guifg=NONE    guibg=#303030 # колонка, указанные в параметре &colorcolumn
    highlight MatchParen        ctermfg=NONE ctermbg=241  guifg=NONE    guibg=#626262 # парные скобки: (), [], {}
    highlight Search            ctermfg=15   ctermbg=4    guifg=#FFFFFF guibg=#0000AA # подсветка найденного шаблона поиска
    highlight WildMenu          ctermfg=11   ctermbg=NONE guifg=#FFFF55 guibg=NONE    # подсветка выбранного элемента в меню автодополнения в командной строке
    highlight Directory         ctermfg=172  ctermbg=0    guifg=#D78700 guibg=#000000 # директория
    highlight Visual            ctermfg=15   ctermbg=12   guifg=#FFFFFF guibg=#005FFF # выделение в режиме Visual
    highlight NonText           ctermfg=27   ctermbg=0    guifg=#5555FF guibg=#000000 # '»', '«', '¬', '@@@'
    highlight MoreMsg           ctermfg=10   ctermbg=0    guifg=#55FF55 guibg=#000000 # сообщение '-- More --'
    highlight WarningMsg        ctermfg=51   ctermbg=0    guifg=#00FFFF guibg=#000000 # предупреждения в командной строке
    highlight Todo              ctermfg=9    ctermbg=19   guifg=#FF5555 guibg=#0000AF # TODO, FIXME, XXX
    # TabBar
    highlight TabLineSel        ctermfg=14   ctermbg=236  guifg=#55FFFF guibg=#303030 # активная вкладка
    highlight TabLine           ctermfg=15   ctermbg=242  guifg=#FFFFFF guibg=#6C6C6C # НЕ активная вкладка
    highlight TabLineFill       ctermfg=238  ctermbg=238  guifg=#444444 guibg=#444444 # свободное место строки вкладок
    # StatusBar
    highlight StatusLineNC      ctermfg=7    ctermbg=236  guifg=#AAAAAA guibg=#303030 # строка статуса НЕ активного активного окна
    highlight StatusLineTerm    ctermfg=13   ctermbg=233  guifg=#FF55FF guibg=#121212 # строка статуса активного активного окна терминала ':term'
    highlight StatusLineTermNC  ctermfg=7    ctermbg=233  guifg=#AAAAAA guibg=#121212 # строка статуса НЕ активного окна терминала ':term'
      # | Кастомный формат: ../core-vim-options/multiple-windows.vim
        highlight StatusFType   ctermfg=6    ctermbg=236  guifg=#00AAAA guibg=#303030 # тип файла: vim, cpp, python
        highlight StatusFPos    ctermfg=15   ctermbg=236  guifg=#FFFFFF guibg=#303030 # позиция курсора: [000184:166/000264][069%]
    # Подсветка кода.
    highlight Statement         ctermfg=11   ctermbg=0    guifg=#FFFF55 guibg=#000000 # if, else, for, in, while, def, return, break, switch, and, or, not
    highlight Type              ctermfg=121  ctermbg=0    guifg=#87FFAF guibg=#000000 # атрибуты html тэгов, int, char, float, double, bool, class, struct, list, dict, ...
    highlight Keyword           ctermfg=81   ctermbg=0    guifg=#5FD7FF guibg=#000000 # function, import, export, package, include, require, fromimport, export, package, include, require, from, public, private, protected, static, this, self, super
    highlight Constant          ctermfg=12   ctermbg=0    guifg=#5555FF guibg=#000000 # true, false, null, None, NULL
    highlight String            ctermfg=13   ctermbg=0    guifg=#FF55FF guibg=#000000 # "строка"
    # vimdiff
    highlight DiffAdd           ctermfg=0    ctermbg=121  guifg=#000000 guibg=#8CFAA2 # добавленная строка
    highlight DiffDelete        ctermfg=0    ctermbg=217  guifg=#000000 guibg=#FAAAAC # удаленная строка
    highlight DiffChange        ctermfg=0    ctermbg=75   guifg=#000000 guibg=#52B4FF # измененная строк
    highlight DiffText          ctermfg=15   ctermbg=21   guifg=#FFFFFF guibg=#2602F2 # измененный текст
    # spellcheck
    highlight SpellBad          ctermfg=15   ctermbg=89   guifg=#FFFFFF guibg=#87005F # не распознанное слово (не найдено в словарях), ошибка в слове
    highlight SpellCap          ctermfg=15   ctermbg=33   guifg=#FFFFFF guibg=#0087FF # слово, которое должно начинаться с заглавной буквы
    # Всплывающее меню дополнений.
    highlight Pmenu             ctermfg=244  ctermbg=235  guifg=#808080 guibg=#262626 # общий фон и цвет текста невыбранных элементов
    highlight PmenuSel          ctermfg=15   ctermbg=60   guifg=#FFFFFF guibg=#5F5F87 # текущий пункт
    highlight PmenuThumb        ctermfg=NONE ctermbg=240  guifg=NONE    guibg=#585858 # бегунок в скроллбаре

    # текущая строка (в vimdiff не подсвечиваем)
    execute(&diff ? 'highlight clear CursorLine' : 'highlight CursorLine ctermbg=235 guibg=#262626')
    # колонка вертикального разделения буферов
    execute('highlight VertSplit ' .. (g:issuperuser ? 'ctermfg=8 guifg=#555555' : 'ctermfg=0 guifg=#000000 ctermbg=8 guibg=#555555'))

    execute("highlight clear StatusFFormat\nhighlight link StatusFFormat StatusLineNC") # формат файла: utf-8 [unix]
else
    # В голом TTY (8 цветов + 7 виртуальных).
    # Base:
    highlight LineNr            ctermfg=6 ctermbg=0    cterm=bold
    highlight CursorLineNr      ctermfg=1 ctermbg=0    cterm=bold
    highlight ColorColumn       ctermfg=0 ctermbg=NONE cterm=reverse,bold
    highlight Search            ctermfg=7 ctermbg=4    cterm=bold
    highlight WildMenu          ctermfg=3 ctermbg=NONE cterm=bold
    highlight Directory         ctermfg=3 ctermbg=0
    highlight NonText           ctermfg=4 ctermbg=0    cterm=bold
    highlight MoreMsg           ctermfg=2 ctermbg=0    cterm=bold
    highlight Todo              ctermfg=1 ctermbg=4    cterm=bold
    # TabBar
    highlight TabLine           ctermfg=7 ctermbg=0
    # StatusBar
    highlight StatusLineNC      ctermfg=7 ctermbg=0    cterm=bold
    highlight StatusLineTerm    ctermfg=5 ctermbg=0    cterm=bold
      # |
        highlight StatusFType   ctermfg=6 ctermbg=0
    # Подсветка кода.
    highlight Statement         ctermfg=3 cterm=bold
    highlight Keyword           ctermfg=6 cterm=bold
    highlight Constant          ctermfg=4 cterm=bold
    highlight String            ctermfg=5 cterm=bold
    # vimdiff
    highlight DiffAdd           ctermfg=0 ctermbg=2
    highlight DiffDelete        ctermfg=0 ctermbg=1
    highlight DiffChange        ctermfg=4 ctermbg=0    cterm=bold,reverse
    # spellcheck
    highlight SpellBad          ctermfg=7 ctermbg=1    cterm=bold
    # Всплывающее меню дополнений.
    highlight Pmenu             ctermfg=0 ctermbg=7    cterm=bold,reverse
    highlight PmenuSel          ctermfg=7 ctermbg=6    cterm=bold
    highlight PmenuThumb        ctermfg=4 ctermbg=NONE cterm=bold,reverse

    execute("highlight clear Visual\nhighlight link Visual Search")
    execute("highlight clear DiffText\nhighlight link DiffText Search")
    execute("highlight clear SpellCap\nhighlight link SpellCap Search")
    execute("highlight clear TabLineSel\nhighlight link TabLineSel LineNr")
    execute("highlight clear StatusFPos\nhighlight link StatusFPos StatusLineNC")
    execute("highlight clear MatchParen\nhighlight link MatchParen ColorColumn")
    execute("highlight clear TabLineFill\nhighlight link TabLineFill ColorColumn")
    execute("highlight clear WarningMsg\nhighlight link WarningMsg NonText")
    execute("highlight clear StatusLineTermNC\nhighlight link StatusLineTermNC TabLine")
    execute("highlight clear StatusFFormat\nhighlight link StatusFFormat TabLine")
    execute("highlight clear VertSplit\nhighlight link VertSplit TabLine")
    execute("highlight clear Type\nhighlight link Type Keyword")

    highlight clear CursorLine # в TTY текущую строку не подсвечиваем
endif

###
# General
###
highlight SignColumn ctermfg=6 ctermbg=0 guifg=#00AAAA guibg=#000000 # колонка с метками Git, ошибки, предупреждения
highlight Folded     ctermfg=3 ctermbg=0 guifg=#AA5500 guibg=#000000 # строка со свернутым текстом (фолдинг) +--  4 lines: for (i = 0; i ---
highlight Ignore     ctermfg=7 ctermbg=0 guifg=#AAAAAA guibg=#000000 # скрытые символы
# spellcheck, не подсвечиваем:
highlight clear SpellRare  # редкое, устаревшее слово
highlight clear SpellLocal # слово на другом языке

execute('highlight Comment ' .. (g:issuperuser ? 'ctermfg=7 guifg=#AAAAAA' : 'ctermfg=2 guifg=#00AA00')) # комментарии

### Ссылки.
# Делаем командой 'execute' сразу 2 команды в одну строку.
# highlight clear <group>           - очищаем
# highlight link  <group> <target>  - устанавливаем
execute("highlight clear FoldColumn\nhighlight link FoldColumn LineNr")         # колонка с отметками фолдинга
execute("highlight clear SpecialComment\nhighlight link SpecialComment LineNr") # комментарии со специальными символами: @param, @return, @brief, \class
execute("highlight clear Special \nhighlight link Special CursorLineNr")        # \n, \t, %s, %d, @decorator
execute("highlight clear SpecialKey\nhighlight link SpecialKey CursorLineNr")   # , , 
execute("highlight clear PmenuSbar\nhighlight link PmenuSbar ColorColumn")      # скроллбар всплывающего меню дополнений
execute("highlight clear Identifier\nhighlight link Identifier Directory")      # var, this
execute("highlight clear Function\nhighlight link Function Directory")          # функции
execute("highlight clear Boolean\nhighlight link Boolean Directory")            # true, false
execute("highlight clear ModeMsg\nhighlight link ModeMsg MoreMsg")              # отображние '-- INSERT --', '-- VISUAL --', '-- REPLACE --'
execute("highlight clear Question\nhighlight link Question MoreMsg")            # вопрос с выбором [Да/нет]
execute("highlight clear Title\nhighlight link Title MoreMsg")                  # заголовок вывода таких команд как ':map', ':set all', ':autocmd'
execute("highlight clear Operator\nhighlight link Operator MoreMsg")            # typeof, new, and, or, not, in, is
execute("highlight clear StatusLine\nhighlight link StatusLine TabLineSel")     # строка статуса активного активного окна
execute("highlight clear PreProc\nhighlight link PreProc Keyword")              # директивы препроцессора: #include, #define, #ifdef, #ifndef, #endif, #else, #pragma, #error
execute("highlight clear Number\nhighlight link Number CursorLineNr")
execute("highlight clear Float\nhighlight link Float CursorLineNr")             # числа с плавающей запятой
execute("highlight clear Terminal\nhighlight link Terminal Normal")             # окно терминала (:term)
execute("highlight clear EndOfBuffer\nhighlight link EndOfBuffer NonText")      # заполнение строк симоволом '~' после последней строки буфера
execute("highlight clear Error\nhighlight link Error CursorLineNr")             # подсветка ошибок синтаксиса в тексте
execute("highlight clear ErrorMsg\nhighlight link ErrorMsg  CursorLineNr")      # сообщения об ошибке в командной строке
execute("highlight clear Conceal \nhighlight link Conceal Ignore")              # скрытые символы <General>
execute("highlight clear lCursor\nhighlight link lCursor Cursor")               # как Cursor, но может иметь разные раскраски для разных языков
execute("highlight clear Label\nhighlight link Label CursorLineNr")             # start_loop:  // `start_loop:` — это Label
execute("highlight clear SpecialChar\nhighlight link SpecialChar Special")      # \n, \t, %s, %d, @decorator
execute("highlight clear IncSearch\nhighlight link IncSearch Search")           # подсветка найденного при наборе шаблона инкрементного поиска
execute("highlight clear VisualNOS\nhighlight link VisualNOS Visual")           # подсветка выделенного в тех случаях, когда Vim не может использовать стандартное визуальное выделение
execute("highlight clear Include\nhighlight link Include Keyword")
execute("highlight clear Define\nhighlight link Define Keyword")
execute("highlight clear Macro\nhighlight link Macro Keyword")
execute("highlight clear PreCondit\nhighlight link PreCondit Keyword")

### Раскомментировать и получить дубликаты групп с одинаковыми цветами,
# чтобы сделать их ссылками на оригинал:
#
# === ГРУППЫ С ОДИНАКОВЫМИ ЦВЕТАМИ ===
#
# Палитра [ctermfg:NONE ctermbg:NONE guifg:bg guibg:fg]:
#   -> Cursor, lCursor
#
# Палитра [ctermfg:172 ctermbg:NONE guifg:#D78700 guibg:NONE]:
#   -> Directory, Identifier
#
# ...

# var color_map = {}
#
# for group in getcompletion('', 'highlight')
#     if hlID(group) == synIDtrans(hlID(group))
#         # Извлекаем цвета, если пусто — пишем NONE
#         var c_fg = synIDattr(hlID(group), 'fg', 'cterm')
#         var c_bg = synIDattr(hlID(group), 'bg', 'cterm')
#         var g_fg = synIDattr(hlID(group), 'fg', 'gui')
#         var g_bg = synIDattr(hlID(group), 'bg', 'gui')
#
#         var cfg = c_fg == '' ? 'NONE' : c_fg
#         var cbg = c_bg == '' ? 'NONE' : c_bg
#         var gfg = g_fg == '' ? 'NONE' : g_fg
#         var gbg = g_bg == '' ? 'NONE' : g_bg
#
#         # Если группа осталась абсолютно пустой, пропускаем её
#         if cfg == 'NONE' && cbg == 'NONE' && gfg == 'NONE' && gbg == 'NONE'
#             continue
#         endif
#
#         # Создаем ключ для группировки
#         var color_key = $'{cfg}|{cbg}|{gfg}|{gbg}'
#
#         if !has_key(color_map, color_key)
#             color_map[color_key] = []
#         endif
#         add(color_map[color_key], group)
#     endif
# endfor
#
# # Выводим результат
# echo "=== ГРУППЫ С ОДИНАКОВЫМИ ЦВЕТАМИ ==="
# for [colors, groups] in items(color_map)
#     if len(groups) > 1
#         var p = split(colors, '|')
#         echo $"\nПалитра [ctermfg:{p[0]} ctermbg:{p[1]} guifg:{p[2]} guibg:{p[3]}]:"
#         echo $"  -> {join(groups, ', ')}"
#     endif
# endfor

# vim:textwidth=0:nowrap
