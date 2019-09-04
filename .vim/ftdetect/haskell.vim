" vint: -ProhibitAutocmdWithNoGroup
autocmd FileType haskell setlocal colorcolumn=+1
autocmd BufWritePre *.hs silent call editing#RemoveTrailingSpaces()
autocmd BufWinEnter *.hs loadview
autocmd BufWinLeave *.hs mkview
