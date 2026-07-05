vim9script

### Очищает ~/.vim/{backup,view,undo}
export def ClearVim()
    var targets = ['backup', 'view', 'undo']

    for dir in targets
        var full_path = $"{$HOME}/.vim/{dir}"

        # Удаляем директорию со всем содержимым.
        delete(full_path, 'rf')
        # Создаем обратно с правами 0o755.
        mkdir(full_path, 'p', 0o755)
        # Если запускали от root, вернем права обычного пользователя.
        if get(g:, 'issuperuser', false)
            system($"chown myrequiem:users {full_path}")
        endif
    endfor

    # Подавляем лишний мусор (redraw), выводим сообщение.
    redraw | echo "Vim: backup, view и undo успешно очищены!"
enddef
