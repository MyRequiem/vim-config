vim9script

# Проверка окружения (глобальные переменные для использования в других модулях)
g:isgvim        = has('gui_running')
g:issuperuser   = ($USER == 'root')

# Настройка поддержки 256 цветов
g:term_256_color = false
if &term =~? '-256color'
    g:term_256_color = true
    &t_Co = '256'
endif

# Читаем конфиги настроек и плагинов.
for settings_dir in ['core-vim-options', 'user-settings', 'plugin-settings']
    var files = globpath($'~/.vim/{settings_dir}', '*.vim', true, true)
    for file in files
        execute 'source ' .. file
    endfor
endfor
