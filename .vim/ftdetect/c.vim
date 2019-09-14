" vint: -ProhibitAutocmdWithNoGroup
autocmd BufWinEnter,BufRead,WinEnter *.c,*.h set filetype=c.doxygen
autocmd FileType c,c.doxygen setlocal cindent
autocmd BufWritePre *.c,*.h silent call editing#RemoveTrailingSpaces()
autocmd BufWinEnter *.c,*.h loadview
autocmd BufWinLeave *.c,*.h mkview
