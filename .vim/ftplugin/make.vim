vim9script

# ftplugin/make.vim

augroup Vim9MakeSettings
    autocmd! * <buffer>

    # Вызываем очистку совпадений строго в момент отрисовки окна буфера.
    # Например, очистка подсветок <Tab> для Makefile.
    autocmd BufWinEnter <buffer> clearmatches()
augroup END

# Для Makefile критически важно использовать жесткие табы (\t), а не пробелы.
setlocal noexpandtab
