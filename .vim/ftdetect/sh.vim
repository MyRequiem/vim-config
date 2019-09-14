" vint: -ProhibitAutocmdWithNoGroup
autocmd BufWritePre *.sh,*.bash silent call editing#RemoveTrailingSpaces()
autocmd BufWinEnter *.sh,*.bash,.bashrc,*.SlackBuild loadview
autocmd BufWinLeave *.sh,*.bash,.bashrc,*.SlackBuild mkview
