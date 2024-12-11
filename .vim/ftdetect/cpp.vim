" vint: -ProhibitAutocmdWithNoGroup
autocmd BufWinEnter,BufRead,WinEnter *.cpp,*.hh,*.hpp set filetype=cpp
autocmd FileType cpp setlocal cindent
autocmd BufWritePre *.cpp,*.hh silent call editing#RemoveTrailingSpaces()
autocmd BufWinEnter *.cpp,*.hh loadview
autocmd BufWinLeave *.cpp,*.hh mkview
