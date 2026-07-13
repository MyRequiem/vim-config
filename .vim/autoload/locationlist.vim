vim9script

### Переключение окна Location List (по <F4> ../user-settings/mappings.vim ).
# Импортируется в
#    ../user-settings/autocommands.vim
#    ../user-settings/mappings.vim

# Экспортируем переменную наружу (для чтения другими файлами).
export var locationlist_is_open = false

# Экспортируем функцию сброса состояния при закрытии через :q
export def ResetState()
    locationlist_is_open = false
enddef

export def LocationListToggle()
    if locationlist_is_open || &l:filetype == 'qf'
        lclose
        locationlist_is_open = false
    else
        if empty(getloclist(0))
            echo "Vim: Список локаций пуст"
            return
        endif

        lopen
        wincmd J
        locationlist_is_open = true
    endif
enddef
