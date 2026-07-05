vim9script

# ../autoload/statusbar.vim
import autoload 'statusbar.vim'
# ../autoload/locationlist.vim
import autoload 'locationlist.vim'

# Раздражает задержка параметра timeoutlen (ожидает ввода маппинга) при выходе
# из командной строки.
augroup cmdlinetimeout
    autocmd!
    autocmd CmdlineEnter * &l:timeoutlen = 0
    autocmd CmdlineLeave * &l:timeoutlen = 800
augroup END

# Не подсвечивать текущую строку в Insert Mode.
augroup icursorline
    autocmd!
    autocmd InsertEnter * &l:cursorline = false
    autocmd InsertLeave * &l:cursorline = true
augroup END

# Подсветка пробелов в конце строк, комбинаций Tab+Space, Space+Tab.
augroup trailing_spases
    autocmd!
    # В read-only буферах ничего не подсвечиваем (проверяем &modifiable).
    autocmd BufReadPost * if &modifiable
        \ | if empty(execute('hi TrailingSpases', 'silent!'))
        \ |     if get(g:, 'term_256_color', false)
        \ |         highlight TrailingSpases term=NONE cterm=NONE ctermfg=4 ctermbg=244 gui=NONE guisp=NONE guifg=#FFFFFF guibg=#808080
        \ |     else
        \ |         highlight TrailingSpases term=NONE cterm=bold,reverse ctermfg=0 ctermbg=4 gui=NONE guisp=NONE guifg=NONE guibg=NONE
        \ |     endif
        \ | endif
        \ | matchadd('TrailingSpases', '\v(\s|\t)+$|\t+\s+(\t+)?|\s+\t+(\s+)?', -1)
        \ | endif
augroup END

# Изменяем цвет status bar в зависимости от текущего режима Vim.
augroup statusbarcolor
    autocmd!

    # Смена цвета строго при переключении режимов.
    autocmd ModeChanged *:[vV\x16]* statusbar.SetStatusBarColorVisual()
    autocmd ModeChanged *:[iR]*     statusbar.SetStatusBarColorInsert()

    # При выходе в Normal-режим из любого другого - сразу обновляем цвет.
    autocmd ModeChanged *:n         statusbar.SetStatusBarColorNormal()

    # Обновление цвета при изменении текста, НО только в Normal-режиме.
    autocmd BufEnter,BufWritePost,TextChanged * {
        statusbar.SetStatusBarColorNormal()
        :redrawtabline
    }
augroup END

augroup locationlist_sync
    autocmd!
    # Перед закрытием любого окна проверяем: если это было окно
    # quickfix/locationlist, сбрасываем переменную locationlist_is_open внутри
    # модуля locationlist в false
    autocmd QuitPre * if &l:filetype == 'qf' | locationlist.ResetState() | endif
augroup END
