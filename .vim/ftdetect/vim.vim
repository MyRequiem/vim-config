" vint: -ProhibitAutocmdWithNoGroup
autocmd FileType vim setlocal foldmethod=marker colorcolumn=+1
autocmd BufWinEnter *.vim,.vimrc  loadview
autocmd BufWinLeave *.vim,.vimrc mkview
