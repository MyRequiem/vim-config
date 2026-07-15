vim9script

# plugin/global-buffer-events.vim
# Глобальные автоматизации для всех открываемых и сохраняемых файлов.

import autoload '../autoload/editing.vim'

augroup Vim9GlobalBufferEvents
    autocmd!

    # ЧИСТОТА КОДА: Удаляем концевые пробелы перед каждым сохранением файла.
    # Проверка &buftype == '' защищает служебные окна (например, BufExplorer)
    # от искажения данных.

    # Список типов файлов, в которых КАТЕГОРИЧЕСКИ НЕЛЬЗЯ удалять концевые
    # пробелы
    const skip_trailing_spaces = ['diff', 'markdown', 'snippets', 'mail']
    # Чистим пробелы, только если тип файла отсутствует в черном списке.
    autocmd BufWritePre * if &buftype == '' && index(skip_trailing_spaces, &filetype) == -1 | silent! call editing.RemoveTrailingSpaces() | endif

    # СОСТОЯНИЕ ОКНА: Автоматически сохраняем разметку и фолдинги при закрытии
    # файла.
    autocmd BufWinLeave * if expand('%') != '' && &buftype == '' | mkview | endif
    # ПОЗИЦИЯ КУРСОРА: Автоматически восстанавливаем разметку и курсор при
    # открытии файла.
    autocmd BufWinEnter * if expand('%') != '' && &buftype == '' | silent! loadview | endif

    # ТИП ФАЙЛА ПО УМОЛЧАНИЮ: Если тип файла не определился (пустой),
    # принудительно выставляем 'text'.
    autocmd BufWinEnter * if &buftype == '' && &filetype == '' | setfiletype text | endif
augroup END

# vim:nowrap
