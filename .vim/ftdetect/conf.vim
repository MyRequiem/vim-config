" vint: -ProhibitAutocmdWithNoGroup
autocmd BufWinEnter php-fpm.conf,ld.so.conf,mke2fs.conf,uniconf.conf,config
    \ set filetype=conf
autocmd BufWinEnter *.conf,*.cfg,config,queue loadview
autocmd BufWinLeave *.conf,*.cfg,config,queue mkview
