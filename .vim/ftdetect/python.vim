" vint: -ProhibitAutocmdWithNoGroup
autocmd FileType python setlocal colorcolumn=+1
autocmd BufWritePre *.py silent call editing#RemoveTrailingSpaces()
autocmd BufWinEnter *.py loadview
autocmd BufWinLeave *.py mkview
