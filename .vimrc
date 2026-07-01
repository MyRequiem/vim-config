vim9script

# не evim {{{1
if v:progname =~? 'evim'
    finish
endif # 1}}}

# запущен gvim? {{{1
g:isgvim = false
if has('gui_running')
    g:isgvim = true
endif # 1}}}

# пользователь root? {{{1
g:issuperuser = false
if $USER ==# 'root'
    g:issuperuser = true
endif # 1}}}

# терминал поддерживает 256 цветов? {{{1
g:term_256_color = false
if &term =~? '-256color'
    g:term_256_color = true
    # количество цветов
    &t_Co = '256'
endif # 1}}}

const rc_dir = $HOME .. '/.vim'

# читаем файлы настроек {{{1
var file_list = globpath(rc_dir .. '/vim-options', '*.vim', 1, 1)
for file in file_list
    execute 'source ' .. file
endfor # 1}}}

# читаем пользовательские настройки и настройки плагинов {{{1
for directory in ['user-settings', 'plugin-settings']
    file_list = globpath(rc_dir .. '/' .. directory, '*.vim', 1, 1)
    for file in file_list
        execute 'source ' .. file
    endfor
endfor # 1}}}
