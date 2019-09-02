" vint: -ProhibitAutocmdWithNoGroup
autocmd FileType zsh setlocal colorcolumn=+1
autocmd BufWritePre *.zsh silent call editing#RemoveTrailingSpaces()
autocmd BufWinEnter *.zsh loadview
autocmd BufWinLeave *.zsh mkview
