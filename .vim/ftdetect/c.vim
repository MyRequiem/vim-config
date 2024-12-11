" vint: -ProhibitAutocmdWithNoGroup
autocmd BufWinEnter,BufRead,WinEnter *.c,*.h set filetype=c
autocmd FileType c setlocal cindent
autocmd BufWritePre *.c,*.h silent call editing#RemoveTrailingSpaces()
autocmd BufWinEnter *.c,*.h loadview
autocmd BufWinLeave *.c,*.h mkview
