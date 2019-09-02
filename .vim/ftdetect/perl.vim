" vint: -ProhibitAutocmdWithNoGroup
autocmd FileType perl setlocal colorcolumn=+1
autocmd BufWritePre *.pl silent call editing#RemoveTrailingSpaces()
autocmd BufWinEnter *.pl loadview
autocmd BufWinLeave *.pl mkview
