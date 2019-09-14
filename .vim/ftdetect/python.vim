" vint: -ProhibitAutocmdWithNoGroup
autocmd BufWritePre *.py silent call editing#RemoveTrailingSpaces()
autocmd BufWinEnter *.py loadview
autocmd BufWinLeave *.py mkview
