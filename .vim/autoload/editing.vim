scriptencoding utf-8

" возвращает последний символ текущей строки буфера
function! GetLastSymbolOnLine() " {{{1
    let l:line = getline('.')
    return l:line[len(l:line) - 1]
endfunction " 1}}}

" в visual mode (только visual line) передвигает выделенные строки вниз/вверх
function! editing#MoveLines(mode, direction) " {{{1
    " mode = visualmode() - возвращает односимвольную строку, представляющую
    "   последний тип используемого визуального режима:
    "       v    - символьный
    "       V    - строковый
    "       <^v> - блочный
    if  a:mode ==# 'V'
        if a:direction ==# 'up'
            normal! '<V'>xkP'[V']
        else
            normal! '<V'>xp'[V']
        endif
    endif
endfunction " 1}}}

" добавление/удаление ';' в конце строки
function! editing#ToggleSemicolonOnEndOfLine() " {{{1
    " если текущая строка заканчивается на ';'
    if GetLastSymbolOnLine() ==# ';'
        execute "normal! v\<Esc>g_x`<"
    else
        execute "normal! v\<Esc>A;\<Esc>`<"
    endif
endfunction " 1}}}

" удаление конечных пробелов и табуляций во всем буфере
function! editing#RemoveTrailingSpaces() " {{{1
    execute 'normal! mz'
    execute	'%s/\s\+$//ge'
    execute 'normal! `z'
    execute 'delmarks z'
endfunction " 1}}}

" замена табуляций на пробелы во всем буфере
function! editing#ReplaceTabsWithSpaces() " {{{1
    let l:spaces = ''
    for i in range(&tabstop)
        let l:spaces .= ' '
    endfor

    execute 'normal! mz'
    execute	'%s/\t/' . l:spaces . '/ge'
    execute 'normal! `z'
    execute 'delmarks z'
endfunction " 1}}}

" на открывающую/закрывающую парную скобку, стоящую в конце строки
function! editing#GoToParentBrace() " {{{1
    let l:lastsymb = GetLastSymbolOnLine()
    if l:lastsymb ==# '}' || l:lastsymb ==# '{'
        normal! g_%
    else
        normal! g_h%
    endif
endfunction " 1}}}

" возвращает мой email
function! editing#GetEmailAddress() " {{{1
    return 'mrvladislavovich@gmail.com'
endfunction
" 1}}}

" изменение поведения <C-y> в insert mode
" Обычно это сочетание копирует символ стоящий на предыдущей строке. {{{1
" Изменим поведение таким образом, чтобы копировался символ на первой НЕ ПУСТОЙ
" строке над текущей
function! editing#LookUpwards()
    " столбец где находится курсор (.)
    let l:column_num      = virtcol('.')

    " Поиск по файлу ближайшей сверху строки в обратном направлении, начиная с
    " текущей позиции курсора. Используется специальный шаблон
    " \%column_numv.*\S. Этот шаблон задает поиск в строке непробельного
    " символа (\S) в колонке column_num или после нее (.*). Второй аргумент -
    " конфигурационная строка:
    "   b - искать в обратном направлении
    "   n - не перемещать курсор
    "   W - не начинать поск с конца, если достигнута первая строка
    " search() возвращает номер найденной строки, или 0, если строка не найдена.
    let l:target_pattern  = '\%' . l:column_num . 'v.'
    let l:target_line_num = search(l:target_pattern . '*\S', 'bnW')

    " если строка найдена, возвращаем вертикально скопированный символ
    if !l:target_line_num
        return ''
    else
        " getline   - из буфера редактора извлекается копия найденной строки
        " matchstr  - из этой строки извлекается по шаблону и возвращается
        "               нужная подстрока состоящая из одного символа
        return matchstr(getline(l:target_line_num), l:target_pattern)
    endif
endfunction
" 1}}}

" выравниваение операторов присваивания
function editing#AlignAssignments () " {{{1
    """ шаблоны, необходимые для нахождения операторов присваивания
    " распознает стандартные операторы присваивания: '=', '+=', '-=', '*=', ...
    " и игнорирует другие операторы, содержащие =  ('==', '=~')
    let l:assign_op   = '[-+*/%|&]\?=\@<!=[=~]\@!'
    " ищет от начала строки минимальное количество символов (.\{-}), за которыми
    " следуют один или несколько пробельных символов (\s*), а затем оператор
    " присваивания
    let l:assign_line = '^\(.\{-}\)\s*\(' . l:assign_op . '\)'

    """ определяем интервал строк с которым будем работать
    """ (непустые строки с одинаковым отступом)
    " matchstr(str, reg) - возвращает найденную подстроку, в данном случае
    " подстроку начальных пробелов. Далее конструируется регулярка, которая ищет
    " точно такие же пробельные символы в начале непустой строки
    let l:indent_pat = '^' . matchstr(getline('.'), '^\s*') . '\S'
    " search() ищет от текущей строки к началу файла ('bnW') и определяет первую
    " строку, не имеющую в точности такого же отступа. Добавив 1 к номеру
    " найденной строки и получим начало интересующего нас интервала
    let l:firstline  = search('^\%('. l:indent_pat . '\)\@!','bnW') + 1
    " search() ищет от текущей строки к концу файла ('nW') и определяет номер
    " последней строки из последовательности строк с точно таким же отступом.
    " Если такая строка не найдена, тогда search() вернет -1, поэтому далее
    " следует инструкция if, в которой lastline задается равным номеру последней
    " строки файла
    let l:lastline   = search('^\%('. l:indent_pat . '\)\@!', 'nW') - 1
    if l:lastline < 0
        let l:lastline = line('$')
    endif

    " находим позицию в строке, по которой следует выравнивать операторы '='
    let l:max_align_col = 0
    let l:max_op_width  = 0
    " определяется позиция в строке, по которой следует выравнивать операторы
    " присваивания. Для этого все строки из интервала проверяются на наличие
    " оператора присваивания, перед которым, возможно, находятся пробельные
    " символы:
    for linetext in getline(l:firstline, l:lastline)
        " в этой строке имеется оператор присваивания?
        " match() возвращает индекс найденного совпадения в строке
        let l:left_width = match(linetext, '\s*' . l:assign_op)

        " если оператор имеется, отслеживаем максимальные позицию
        " в строке и ширину оператора присваивания
        if l:left_width >= 0
            " с помощью max() определяется максимальная (т.е. самая правая)
            " позиция оператора среди всех найденных к данному моменту
            " операторов присваивания:
            let l:max_align_col = max([l:max_align_col, l:left_width])
            " с помощью matchstr() извлекаем сам оператор и определяем его длину
            let l:op_width      = strlen(matchstr(linetext, l:assign_op))
            " запоминаем оператор максимальной длины
            let l:max_op_width  = max([l:max_op_width, l:op_width+1])
        endif
    endfor

    " остается пройти по строкам из интервала и соответствующим образом их
    " переформатировать. printf() в Vimscript printf не распечатывает
    " отформатированную версию строки с данными (как в C), а формирует и
    " возвращает эту отформатированную строку.
    let l:formatter = '\=printf("%-*s%*s", l:max_align_col,
                                         \ submatch(1),
                                         \ l:max_op_width,
                                         \ submatch(2)
                              \)'

    " переформатируем строки с операторами присваивания
    for l:linenum in range(l:firstline, l:lastline)
        let l:oldline = getline(l:linenum)
        let l:newline = substitute(l:oldline, l:assign_line, l:formatter, '')
        call setline(l:linenum, l:newline)
    endfor
endfunction " 1}}
