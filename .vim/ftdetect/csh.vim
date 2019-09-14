" vint: -ProhibitAutocmdWithNoGroup
autocmd BufWritePre *.csh silent call editing#RemoveTrailingSpaces()
autocmd BufWinEnter *.csh loadview
autocmd BufWinLeave *.csh mkview
