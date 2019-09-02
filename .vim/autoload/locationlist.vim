scriptencoding utf-8

" открытие/закрытие Location List {{{1
function! locationlist#LocationListToggle()
    let g:locationlist_is_open = get(g:, 'locationlist_is_open', 0)
    if g:locationlist_is_open || &filetype ==# 'qf'
        lclose
        let g:locationlist_is_open = 0
    else
        try
            lopen
        catch
            return
        endtry

        " переместим окно вниз на всю ширину
        execute "normal! \<C-w>J"
        let g:locationlist_is_open = 1
    endif
endfunction " 1}}}
