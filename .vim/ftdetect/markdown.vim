" vint: -ProhibitAutocmdWithNoGroup
autocmd FileType markdown setlocal colorcolumn=0
autocmd BufWinEnter *.md loadview
autocmd BufWinLeave *.md mkview
