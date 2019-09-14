" vint: -ProhibitAutocmdWithNoGroup
autocmd FileType javascript setlocal cindent nowrap
autocmd BufWritePre *.js silent call editing#RemoveTrailingSpaces()
autocmd BufWinEnter *.js loadview
autocmd BufWinLeave *.js mkview

autocmd BufEnter *_encode.user.js setlocal filetype=text nowrap
