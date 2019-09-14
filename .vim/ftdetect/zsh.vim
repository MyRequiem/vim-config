" vint: -ProhibitAutocmdWithNoGroup
autocmd BufWritePre *.zsh silent call editing#RemoveTrailingSpaces()
autocmd BufWinEnter *.zsh loadview
autocmd BufWinLeave *.zsh mkview
