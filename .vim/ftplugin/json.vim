vim9script

# ftplugin/json.vim
# Всегда отображать двойные кавычки в JSON, перебивая дефолтное скрытие.

augroup END
autocmd! * <buffer>

# Сработает в самый последний момент, когда системный плагин JSON уже
# отстрелялся.
autocmd SafeState <buffer> setlocal conceallevel=0
