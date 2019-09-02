scriptencoding utf-8

" не evim {{{1
if v:progname =~? 'evim'
    finish
endif " 1}}}

" запущен gvim? {{{1
let g:isgvim = 0
if has('gui_running')
    let g:isgvim = 1
endif " 1}}}

" пользователь root? {{{1
let g:issuperuser = 0
if $USER ==# 'root'
    let g:issuperuser = 1
endif " 1}}}

" терминал поддерживает 256 цветов? {{{1
let g:term_256_color = 0
if &term =~? '-256color'
    let g:term_256_color = 1
    " количество цветов
    set t_Co=256
endif " 1}}}

let s:rc_dir = $HOME . '/.vim'

" читаем файлы настроек {{{1
let s:file_list = split(globpath(s:rc_dir . '/vim-options', '*.vim'), '\n')
for s:file in s:file_list
    execute 'source ' . s:file
endfor " 1}}}

" читаем пользовательские настройки и настройки плагинов {{{1
for s:directory in ['user-settings', 'plugin-settings']
    let s:file_list = split(globpath(s:rc_dir . '/' . s:directory, '*.vim'),
                          \ '\n')
    for s:file in s:file_list
        execute 'source ' . s:file
    endfor
endfor " 1}}}
