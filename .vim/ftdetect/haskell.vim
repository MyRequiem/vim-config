" vint: -ProhibitAutocmdWithNoGroup
autocmd BufWritePre *.hs silent call editing#RemoveTrailingSpaces()
autocmd BufWinEnter *.hs loadview
autocmd BufWinLeave *.hs mkview
