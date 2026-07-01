vim9script

# Не evim?
if v:progname =~? 'evim'
    finish
endif

# Запущен gvim?
g:isgvim = false
if has('gui_running')
    g:isgvim = true
endif

# Пользователь root?
g:issuperuser = false
if $USER ==# 'root'
    g:issuperuser = true
endif

# Терминал поддерживает 256 цветов?
g:term_256_color = false
if &term =~? '-256color'
    g:term_256_color = true
    # Количество цветов
    &t_Co = '256'
endif

# Читаем конфиги настроек и плагинов:
for settings_dir in ['core-vim-options', 'user-settings', 'plugin-settings']
    for file in globpath('~/.vim/' .. settings_dir, '*.vim', 1, 1)
        execute 'source ' .. file
    endfor
endfor
