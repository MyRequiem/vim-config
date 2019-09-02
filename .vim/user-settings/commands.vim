scriptencoding utf-8

" 'isort' в Python
command! OptimizeImports :!isort

" очистить ~/.vim/{backup,view}
" ../autoload/viewandbackup.vim
command ClearViewAndBackup  call viewandbackup#ClearViewAndBackup()

" открытие QuickFix окна после 'make'
" '!'  - не перемещаться на первую найденную ошибку
" сначала открываем окно QuickFix, даже если нет ошибок ':copen', затем
" помещаем его внизу на всю ширину '<C-w>J' и команда ':cwindow' откроет
" окно если есть ошибки (если оно еще не открыто) или закроет его,
" если ошибок нет
command -nargs=* Make make! <args> | copen | execute "normal! \<C-w>J" | cwindow

command Vimdoc      edit /home/myrequiem/docs/linux/vim/
command Gitdoc      edit /home/myrequiem/docs/linux/git/
command Docs        edit /home/myrequiem/docs/linux/
command Git         edit /home/myrequiem/projects/git/
command Userjs      edit /home/myrequiem/prdata/opera/userjs/
command Vimconfig   edit /home/myrequiem/.vim/
command Vimscript   edit /home/myrequiem/docs/programming/vimscript/
command Gitdistr    edit
\ /home/myrequiem/projects/git/system-config/home/myrequiem/distr/unix/
command Gitmyreq    edit
\ /home/myrequiem/projects/git/system-config/home/myrequiem/
command Config      edit $HOME/.config/

""" FTP
command FTPVim              edit ftp://ftp.home.vim.org/pub/vim/
command FTPGwscripts        edit ftp://egwscripts@gwscripts.ucoz.net/
command FTPSlackware        edit ftp://ftp.osuosl.org/pub/slackware/
command FTPSlackbuilds      edit ftp://slackbuilds.org/pub/slackbuilds/
command FTPGnu              edit ftp://ftp.gnu.org/gnu/
command FTPAlienPkg         edit
\ ftp://ftp.lip6.fr/pub/linux/distributions/slackware/people/alien/sbrepos/
command FTPAlienSrc         edit
\ ftp://ftp.lip6.fr/pub/linux/distributions/slackware/people/alien/slackbuilds/
command FTPAlienKde         edit
\ ftp://ftp.lip6.fr/pub/linux/distributions/slackware/people/alien-kde/
command FTPAlienMultilib    edit
\ ftp://ftp.lip6.fr/pub/linux/distributions/slackware/people/alien/multilib/
command FTPAlienSlacklive   edit
\ ftp://ftp.lip6.fr/pub/linux/distributions/slackware/people/alien-slacklive/
