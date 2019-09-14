" vint: -ProhibitAutocmdWithNoGroup
autocmd BufWinEnter,BufRead,WinEnter *.cpp,*.hh,*.hpp set filetype=cpp.doxygen
autocmd FileType cpp,cpp.doxygen setlocal cindent
autocmd BufWritePre *.cpp,*.hh silent call editing#RemoveTrailingSpaces()
autocmd BufWinEnter *.cpp,*.hh loadview
autocmd BufWinLeave *.cpp,*.hh mkview
