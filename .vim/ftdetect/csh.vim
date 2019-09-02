" vint: -ProhibitAutocmdWithNoGroup
autocmd FileType csh setlocal colorcolumn=+1
autocmd BufWritePre *.csh silent call editing#RemoveTrailingSpaces()
autocmd BufWinEnter *.csh loadview
autocmd BufWinLeave *.csh mkview
