scriptencoding utf-8

function! clearvim#ClearVim()
    let l:backup = $HOME . '/.vim/backup'
    call delete(fnameescape(l:backup), 'rf')
    call mkdir(l:backup, 'p', 0o755)

    let l:view = $HOME . '/.vim/view'
    call delete(fnameescape(l:view), 'rf')
    call mkdir(l:view, 'p', 0o755)

    let l:undo = $HOME . '/.vim/undo'
    call delete(fnameescape(l:undo), 'rf')
    call mkdir(l:undo, 'p', 0o755)

    if g:issuperuser
        call system('chown myrequiem:users ' . l:backup)
        call system('chown myrequiem:users ' . l:view)
        call system('chown myrequiem:users ' . l:undo)
    endif

    execute 'normal! :<Esc>'
endfunction
