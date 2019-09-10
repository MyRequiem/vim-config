" vint: -ProhibitAutocmdWithNoGroup
autocmd BufWinEnter php-fpm.conf,ld.so.conf,mke2fs.conf,uniconf.conf,config
    \ set filetype=conf
autocmd FileType conf setlocal colorcolumn=+1
autocmd BufWinEnter *.conf,*.cfg,config loadview
autocmd BufWinLeave *.conf,*.cfg,config mkview
