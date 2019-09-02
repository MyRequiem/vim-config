function! viewandbackup#ClearViewAndBackup()
    let l:backup = $HOME . '/.vim/backup'
    call delete(fnameescape(l:backup), 'rf')
    call mkdir(l:backup, 'p', 0755)

    let l:view = $HOME . '/.vim/view'
    call delete(fnameescape(l:view), 'rf')
    call mkdir(l:view, 'p', 0755)

    execute 'normal! :<Esc>'
endfunction
