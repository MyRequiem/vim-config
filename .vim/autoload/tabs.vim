scriptencoding utf-8

" для параметра 'tabline':  показываем во вкладках только имя файла {{{1
function tabs#ShortTabLine()
    " range(num)        -> список [0..num-1]
    " tabpagenr('$')    -> число открытых вкладок

    let l:ret = ''
    " номер активной вкладки (отсчет с 1)
    let l:tabpageactivenr = tabpagenr()

    for i in range(tabpagenr('$'))
        " номер вкладки
        let l:tabnum = i + 1
        " если вкладка активная
        if l:tabnum == l:tabpageactivenr
            " установим группу для подсветки активной вкладки
            let l:ret .= '%#TabLineSel#'
        else
            " установим группу для подсветки НЕ активной вкладки
            let l:ret .= '%#TabLine#'
        endif

        " список номеров активных буферов для окна 1, 2, 3... во вкладке
        " [buf_num_for_win_1, buf_num_for_win_2, ...]
        let l:buflist = tabpagebuflist(l:tabnum)
        " номер текущего окна во вкладке (нумерация с 1)
        let l:winnr = tabpagewinnr(l:tabnum)
        " имя текущего буфера
        let l:buffername = bufname(l:buflist[l:winnr - 1])
        " оставляем только имя файла
        let l:filename = fnamemodify(l:buffername, ':t')

        " нет имени файла (пустой буфер)
        if empty(l:filename)
            let l:filename = '[noname]'
        endif

        let l:ret .= ' ' . l:filename . ' '
    endfor

    " заполняем лишнее пространство
    let l:ret .= '%#TabLineFill#'

    return l:ret
endfunction " 1}}}
