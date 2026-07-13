vim9script

# Используется в ../core-vim-options/multiple-tab-pages.vim для параметра
# 'tabline'

### Форматируем заголовки вкладок: [N filename.ext]
export def ShortTabLine(): string
    var ret = ''
    # Номер активной вкладки (отсчет с 1).
    var tabpageactivenr = tabpagenr()

    # tabpagenr('$')       -> общее количество вкладок
    # range(tabpagenr('$') -> [0, 1, 2]
    for i in range(tabpagenr('$'))
        # Номер вкладки.
        var tabnum = i + 1
        # Если вкладка активная.
        if tabnum == tabpageactivenr
            # Установим группу для подсветки активной вкладки.
            ret ..= '%#TabLineSel#'
        else
            # Установим группу для подсветки НЕ активной вкладки.
            ret ..= '%#TabLine#'
        endif

        # Список номеров активных буферов для окон во вкладке.
        var buflist = tabpagebuflist(tabnum)
        # Номер текущего окна во вкладке (нумерация с 1).
        var winnr = tabpagewinnr(tabnum)
        # Имя текущего буфера.
        var buffername = bufname(buflist[winnr - 1])
        # Оставляем только имя файла.
        var filename = fnamemodify(buffername, ':t')

        # Нет имени файла (пустой буфер).
        if empty(filename)
            filename = 'NoName'
        endif

        ret ..= $'[{tabnum} {filename}] '
    endfor

    # Заполняем лишнее пространство.
    ret ..= '%#TabLineFill#'

    return ret
enddef
