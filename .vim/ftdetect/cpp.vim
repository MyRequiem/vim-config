" vint: -ProhibitAutocmdWithNoGroup
autocmd BufWinEnter,BufRead,WinEnter *.cpp,*.hh set filetype=cpp.doxygen
autocmd FileType cpp,cpp.doxygen setlocal cindent colorcolumn=+1
autocmd BufWritePre *.cpp,*.hh silent call editing#RemoveTrailingSpaces()
autocmd BufWinEnter *.cpp,*.hh loadview
autocmd BufWinLeave *.cpp,*.hh mkview
