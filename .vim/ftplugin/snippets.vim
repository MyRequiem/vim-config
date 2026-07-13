vim9script

# ftplugin/snippets.vim
# Очистка подсветок совпадений (Табуляций) для файлов сниппетов.

augroup Vim9SnippetsSettings
    autocmd! * <buffer>

    # Вызываем очистку совпадений строго в момент отрисовки окна буфера.
    autocmd BufWinEnter <buffer> clearmatches()
augroup END
