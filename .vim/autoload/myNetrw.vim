scriptencoding utf-8

" ../plugin-settings/netrwPlugin.vim

" Показать/скрыть браузер файлов (filemanager).
function! myNetrw#ToggleNetrw() abort
    if exists(':Rexplore') == 2
        execute 'Rexplore'
    else
        execute 'Explore'
    endif
endfunction

" Сохранить имя текущего файла в CLIPBOARD
function! myNetrw#SaveFileName(mode) abort
    " mode == 0   - только имя файла
    " mode == 1   - полный путь к файлу

    " снимаем отметки со всех файлов
    execute 'normal mF'
    " очищаем список отмеченных файлов
    " :h netrw-modify
    call netrw#Modify('netrwmarkfilelist', [])
    " отмечаем текущий файл
    execute 'normal mf'
    " :h netrw-expose
    " список отмеченных файлов содержит один текущий файл,
    " убираем последний слеш (если это директория)
    let l:marked_file = substitute(netrw#Expose('netrwmarkfilelist')[0],
                                 \ '\v\/$', '', '')
    " сохраняем в регистре '+' полный путь к файлу или только имя файла
    let @+ = a:mode ? l:marked_file : fnamemodify(l:marked_file, ':t')
    " снимаем все отметки
    execute 'normal mF'
endfunction

" перейти в текущую для Vim директорию (cd {pwd})
function! myNetrw#GoToRootDir() abort
    execute 'edit ' . getcwd()
endfunction
