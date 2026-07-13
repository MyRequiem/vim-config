vim9script

# plugin/global-buffer-events.vim
# Глобальные автоматизации для всех открываемых и сохраняемых файлов.

import autoload '../autoload/editing.vim'

augroup Vim9GlobalBufferEvents
    autocmd!

    # ЧИСТОТА КОДА: Удаляем концевые пробелы перед каждым сохранением файла
    # (кроме filetype=<diff|markdown>). Проверка &buftype == '' защищает
    # служебные окна (например, BufExplorer) от искажения данных.
    autocmd BufWritePre * if &buftype == '' && &filetype != 'diff' && &filetype != 'markdown' | silent! call editing.RemoveTrailingSpaces() | endif
    # СОСТОЯНИЕ ОКНА: Автоматически сохраняем разметку и фолдинги при закрытии
    # файла.
    autocmd BufWinLeave * if expand('%') != '' && &buftype == '' | mkview | endif
    # ПОЗИЦИЯ КУРСОРА: Автоматически восстанавливаем разметку и курсор при
    # открытии файла.
    autocmd BufWinEnter * if expand('%') != '' && &buftype == '' | silent! loadview | endif
augroup END
