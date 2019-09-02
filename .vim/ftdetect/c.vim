" vint: -ProhibitAutocmdWithNoGroup
autocmd BufWinEnter,BufRead,WinEnter *.c,*.h set filetype=c.doxygen
autocmd FileType c,c.doxygen setlocal cindent colorcolumn=+1
autocmd BufWritePre *.c,*.h silent call editing#RemoveTrailingSpaces()
autocmd BufWinEnter *.c,*.h loadview
autocmd BufWinLeave *.c,*.h mkview
