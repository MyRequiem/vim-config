vim9script

# Импортируется в
# ../plugin-settings/netrwPlugin.vim
# ../ftplugin/netrw/netrw.vim

export def ToggleNetrw()
    if exists(':Rexplore') == 2
        execute 'Rexplore'
    else
        execute 'Explore'
    endif
enddef

export def SaveFileName(mode: number)
    # mode == 0 - только имя файла
    # mode == 1 - полный путь к файлу

    # Снимаем отметки со всех файлов.
    execute 'normal mF'

    # Очищаем список отмеченных файлов (:h netrw-modify).
    netrw#Modify('netrwmarkfilelist', [])

    # Отмечаем текущий файл.
    execute 'normal mf'

    # Список отмеченных файлов содержит один текущий файл, убираем последний
    # слеш (если это директория).
    var marked_file =
            \ substitute(netrw#Expose('netrwmarkfilelist')[0], '\v\/$', '', '')

    # Сохраняем в регистр '+' полный путь к файлу или только имя файла.
    marked_file = mode ? marked_file : fnamemodify(marked_file, ':t')
    @+ = marked_file
    echo $"Yanked: {marked_file}"

    # Снимаем все отметки.
    execute 'normal mF'
enddef

export def ToggleMarkItem()
    execute 'normal mfj'
enddef
