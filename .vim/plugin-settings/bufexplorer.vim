vim9script

###
# :h bufexplorer.txt
###

# -bb - открыть окно плагина
nnoremap <silent><leader>bb :BufExplorerHorizontalSplit<CR>

### Основные настройки.
# не показывать help
g:bufExplorerDefaultHelp              = 0
# отключить клавиши по умолчанию
g:bufExplorerDisableDefaultKeyMapping = 1
# показывать [No Name] буферы
g:bufExplorerShowNoName               = 1
# сортировать по номеру буфера
g:bufExplorerSortBy                   = 'number'
# открывать окно сверху
g:bufExplorerSplitBelow               = 0
# высота окна
g:bufExplorerSplitHorzSize            = 15

# ==============================================================================
# По умолчанию по <Enter> выбранный буфер открывается в том же окне, что и
# bufexplorer. Изменим поведение чтобы выбранный буфер открывался в основном
# (предыдущем) окне. Так же отключаем ненужные горячие клавиши по умолчанию.

# Группа автокоманд для перехвата событий запуска плагина.
# Использование префикса 'UserPrefix_' делает имя группы уникальным.
augroup UserPrefix_BufExplorerGroup
    autocmd!
    # Как только плагин инициализирует свое окно, он отправляет событие
    # "BufExplorer_Started". Мы ловим его и мгновенно запускаем нашу функцию
    # настройки UserPrefix_setupBufExplorer.
    autocmd User BufExplorer_Started UserPrefix_setupBufExplorer()
augroup END

# Функция локальной настройки окна BufExplorer.
def UserPrefix_setupBufExplorer()
    ### ПЕРЕНАЗНАЧАЕМ КЛАВИШУ <Enter>.
    # <nowait> - Vim выполнит переход сразу, не дожидаясь нажатия других клавиш.
    # <buffer> - маппинг сработает ТОЛЬКО внутри окна BufExplorer.
    # <Plug>(BufExplorer_OpenBufferOriginalWindow) - встроенная скрытая
    #    команда плагина, которая принудительно открывает выбранный файл в
    #    основном (предыдущем) окне.
    nmap <nowait><buffer> <CR> <Plug>(BufExplorer_OpenBufferOriginalWindow)

    ### ОТКЛЮЧАЕМ ВСТРОЕННЫЕ КЛАВИШ ПЛАГИНА
    # a : toggle find active buffer
    nnoremap <buffer><nowait> a <Nop>
    # b : Fast buffer switching with b<any bufnum>
    nnoremap <buffer><nowait> b <Nop>
    # B : toggle showing buffers only on their MRU tabs
    nnoremap <buffer><nowait> B <Nop>
    # D : wipe buffer
    nnoremap <buffer><nowait> D <Nop>
    # F : open buffer in another window above the current
    nnoremap <buffer><nowait> F <Nop>
    # f : open buffer in another window below the current
    nnoremap <buffer><nowait> f <Nop>
    # p : toggle splitting of path into name + dir
    nnoremap <buffer><nowait> p <Nop>
    # r : reverse sort
    nnoremap <buffer><nowait> r <Nop>
    # R : toggle showing relative paths
    nnoremap <buffer><nowait> R <Nop>
    # s : cycle thru "sort by" fields ['number', 'name', 'fullpath', 'mru', 'extension']
    nnoremap <buffer><nowait> s <Nop>
    # S : reverse cycle thru "sort by" fields
    nnoremap <buffer><nowait> S <Nop>
    # T : toggle showing all buffers/only buffers used on this tab
    nnoremap <buffer><nowait> T <Nop>
    # u : toggle showing unlisted buffers
    nnoremap <buffer><nowait> u <Nop>
    # V : open buffer in another window on the left of the current
    nnoremap <buffer><nowait> V <Nop>
    # v : open buffer in another window on the right of the current
    nnoremap <buffer><nowait> v <Nop>
    # X : toggle showing terminal buffers
    nnoremap <buffer><nowait> X <Nop>
enddef
# ==============================================================================

# Определение цветовой схемы:
# ~/.vim/bundle/bufexplorer.vim/plugin/bufexplorer.vim
# help, Press <F1> for Help
highlight link bufExplorerHelp         Comment
# строка Sorted by ... | Locate ...
highlight link bufExplorerSortBy       Comment
# при нажатии <F1>: Buffer Explorer (7.4.21)
highlight link bufExplorerTitle        LineNr
# клавиши в help
highlight link bufExplorerMapping      Function
# тип сортировки в help
highlight link bufExplorerSortType     Comment
# текущий буфер
highlight link bufExplorerCurBuf       LineNr
# скрытые буферы
highlight link bufExplorerHidBuf       Function
# альтернативный буфер (переход :e #)
highlight link bufExplorerAltBuf       Function
# unlisted buffer
highlight link bufExplorerUnlBuf       Ignore
# буфер readonly, nomodifiable
highlight link bufExplorerLockedBuf    Number
highlight link bufExplorerOpenIn       Function
highlight link bufExplorerActBuf       SignColumn
highlight link bufExplorerBufNbr       Normal
highlight link bufExplorerSplit        Comment
highlight link bufExplorerToggleSplit  Comment
highlight link bufExplorerToggleOpen   Comment
highlight link bufExplorerModBuf       Function
highlight link bufExplorerInactBuf     Function
