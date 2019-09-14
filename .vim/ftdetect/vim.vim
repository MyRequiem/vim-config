" vint: -ProhibitAutocmdWithNoGroup
autocmd FileType vim setlocal foldmethod=marker
autocmd BufWinEnter *.vim,.vimrc  loadview
autocmd BufWinLeave *.vim,.vimrc mkview
