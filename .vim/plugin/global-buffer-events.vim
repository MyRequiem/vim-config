vim9script

# plugin/global-buffer-events.vim
# Глобальные автоматизации для всех открываемых и сохраняемых файлов.

import autoload '../autoload/editing.vim'

augroup Vim9GlobalBufferEvents
    autocmd!

    # Список типов файлов, в которых КАТЕГОРИЧЕСКИ НЕЛЬЗЯ удалять концевые
    # пробелы
    const skip_trailing_spaces = ['diff', 'markdown', 'snippets', 'mail']

    # ЧИСТИМ ПРОБЕЛЫ, только если тип файла отсутствует в черном списке.
    # Проверка &buftype == '' защищает служебные окна (например, BufExplorer)
    # от искажения данных.
    autocmd BufWritePre * if &buftype == '' && index(skip_trailing_spaces, &filetype) == -1 | silent! editing.RemoveTrailingSpaces() | endif

    # СОСТОЯНИЕ ОКНА: Сохраняем разметку и фолдинги при закрытии файла.
    # expand('%') - возвращает имя текущего файла (убеждаемся что файл
    #               физически существует на диске и  это не пустое окно)
    autocmd BufWinLeave * if expand('%') != '' && &buftype == '' | mkview | endif

    autocmd BufWinEnter * {
        if expand('%') != '' && &buftype == ''
            # ПОЗИЦИЯ КУРСОРА: Автоматически восстанавливаем разметку и курсор
            # при открытии файла.
            silent! loadview

            # ТИП ФАЙЛА ПО УМОЛЧАНИЮ: Если тип файла не определился (пустой),
            # принудительно выставляем 'text'.
            if &filetype == ''
                setfiletype text
            endif

            # ----
            # VIM ЗАПРЕТИЛИ ИСПОЛЬЗОВАТЬ 'nowrap' в modeline (писать можно, но
            # игнорируется). Будем читать сами и делать как нам хочется.
            # ----
            # Берем первую строку и самую последнюю (через $).
            var lines = [getline(1), getline('$')]
            # Если в любой из них есть nowrap - отключаем перенос.
            if !empty(filter(lines, (_, val) => val =~ '\<nowrap\>'))
                setlocal nowrap
            endif
        endif
    }
augroup END

# vim:nowrap
