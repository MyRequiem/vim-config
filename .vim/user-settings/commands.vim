scriptencoding utf-8

" очистить ~/.vim/{backup,view}
" ../autoload/viewandbackup.vim
command ClearViewAndBackup  call viewandbackup#ClearViewAndBackup()

command Vimdoc      edit /home/myrequiem/docs/linux/vim/
command Gitdoc      edit /home/myrequiem/docs/linux/git/
command Docs        edit /home/myrequiem/docs/linux/
command Git         edit /home/myrequiem/projects/git/
command Vimconfig   edit /home/myrequiem/.vim/
command Gitdistr    edit
\ /home/myrequiem/projects/git/system-config/home/myrequiem/distr/unix/
command Gitmyreq    edit
\ /home/myrequiem/projects/git/system-config/home/myrequiem/
command Config      edit $HOME/.config/

""" FTP
command FTPVim              edit ftp://ftp.home.vim.org/pub/vim/
command FTPSlackware        edit ftp://ftp.osuosl.org/pub/slackware/
command FTPSlackbuilds      edit ftp://slackbuilds.org/pub/slackbuilds/
command FTPGnu              edit ftp://ftp.gnu.org/gnu/
