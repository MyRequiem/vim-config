vim9script

# Добавление/удаление ';' в конце строки.
export def ToggleSemicolonOnEndOfLine()
    var line = getline('.')

    # Пустая строка, выходим.
    if !line | return | endif

    # line[ : -2] - обязательно пробелы обрамляют двоеточие.
    # (в отличие от Python)
    var new_line = (line[-1] == ';') ? line[ : -2] : line .. ';'
    setline('.', new_line)
enddef

# Удаление конечных пробелов и табуляций во всем буфере.
export def RemoveTrailingSpaces()
    # Сохраняем позицию курсора и состояние экрана.
    var save_cursor = getpos('.')
    # Очищаем пробелы. silent! глушит ошибку E486, если пробелов нет.
    silent! :%s/\s\+$//g
    # Возвращаем курсор на то же место.
    setpos('.', save_cursor)
enddef

# Замена табуляций на пробелы во всем буфере.
export def ReplaceTabsWithSpaces()
    # Сохраняем позицию курсора и состояние экрана.
    var save_cursor = getpos('.')
    # Строим строку нужного количества пробелов на основе текущего &tabstop
    var spaces = repeat(' ', &l:tabstop)
    # Меняем табы на сгенерированные пробелы.
    silent! execute $":%s/\t/{spaces}/g"
    # Убираем то, что осталось на концах.
    RemoveTrailingSpaces()
    # Возвращаем курсор на то же место.
    setpos('.', save_cursor)
enddef
