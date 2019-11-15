" vint: -ProhibitAutocmdWithNoGroup
" autocmd FileType privoxy setlocal commentstring="#%s"
autocmd BufWinEnter *.action,.filter loadview
autocmd BufWinLeave *.action,.filter mkview
