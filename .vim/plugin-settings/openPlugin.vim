vim9script

###
# Системный плагин: /usr/share/vim/vim92/plugin/openPlugin.vim
# :h gx
###

# Полностью автономно и асинхронно открывает веб-ссылки в указанном браузере.

g:Openprg               = 'zen-browser'
const openPlugin_hotkey = 'gB'

# Отключаем встроенный хоткей 'gx' системного плагина openPlugin.vim
g:nogx = true

# Сверхбыстрая асинхронная функция-фильтр с отвязкой процесса от Vim.
def OpenOnlyWebLinks(text: string)
    const url = matchstr(text, '^\%(\%(https\?\|ftp\)://\|www\.\)\S\+')

    if !empty(url)
        # job_start принимает команду в виде списка аргументов. Это избавляет
        # от необходимости использовать shellescape() и амперсанд '&'.
        # Настройка {stoponexit: ""} отвязывает браузер от жизненного цикла
        # Vim. Браузер не закрывается при закрытии редактора.
        job_start([g:Openprg, trim(url)], { "stoponexit": "" })
    endif
enddef

execute 'nnoremap <silent> ' .. openPlugin_hotkey .. ' <scriptcmd>OpenOnlyWebLinks(expand("<cWORD>"))<CR>'
execute 'xnoremap <silent> ' .. openPlugin_hotkey .. ' <scriptcmd>OpenOnlyWebLinks(getregion(getpos("v"), getpos("."), {type: mode()})->join())<CR>'
