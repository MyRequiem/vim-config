" vint: -ProhibitAutocmdWithNoGroup
autocmd BufWinEnter php-fpm.conf,ld.so.conf,mke2fs.conf,uniconf.conf
    \ set filetype=conf
autocmd FileType conf setlocal colorcolumn=+1
autocmd BufWinEnter *.conf  loadview
autocmd BufWinLeave *.conf mkview
