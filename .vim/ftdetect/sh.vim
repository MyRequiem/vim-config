" vint: -ProhibitAutocmdWithNoGroup
autocmd FileType sh setlocal colorcolumn=+1
autocmd BufWritePre *.sh,*.bash silent call editing#RemoveTrailingSpaces()
autocmd BufWinEnter *.sh,*.bash,.bashrc loadview
autocmd BufWinLeave *.sh,*.bash,.bashrc mkview
