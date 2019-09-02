" vint: -ProhibitAutocmdWithNoGroup
autocmd FileType javascript setlocal cindent colorcolumn=+1
autocmd BufWritePre *.js silent call editing#RemoveTrailingSpaces()
autocmd BufWinEnter *.js loadview
autocmd BufWinLeave *.js mkview
