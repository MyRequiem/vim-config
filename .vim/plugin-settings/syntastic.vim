vim9script

###
# :h syntastic.txt
###

# <F3>              - запустить проверку синтаксиса
# :SyntasticCheck   - запустить проверку синтаксиса
# :SyntasticInfo    - информация по filetype, доступные checker'ы, ...
# :SyntasticReset   - сбросить все найденные ошибки

# По <F3> запускаем проверку текущего буфера вручную.
nnoremap <silent> <F3> :SyntasticCheck<CR>

# Базовые настройки статуса и символов.
g:syntastic_check_on_wq              = 0   # не проверять при закрытии файла через :wq
g:syntastic_aggregate_errors         = 1   # собирать ошибки со всех чекеров одновременно
g:syntastic_error_symbol             = '▶' # маркер критической ошибки слева на панели
g:syntastic_warning_symbol           = '▶' # маркер предупреждения
g:syntastic_style_error_symbol       = '≫' # маркер ошибки стиля (PEP8 / ESLint)
g:syntastic_style_warning_symbol     = '≫' # исправлена опечатка в имени переменной
g:syntastic_enable_balloons          = 0   # отключить всплывающие подсказки при наведении мыши
g:syntastic_always_populate_loc_list = 1   # всегда отправлять ошибки в окно Location List
g:syntastic_exit_checks              = 0   # не тормозить выход из Vim ради проверок

# Пассивный режим (Проверка СТРОГО по нажатию F3).
g:syntastic_mode_map = {
    mode: 'passive',
    active_filetypes: [],
    passive_filetypes: []
}

# Настройка красивого Status Line (:h syntastic_stl_format).
highlight SyntasticStatusLine ctermbg=1 ctermfg=15 guibg=#AA0000 guifg=#FFFFFF
set statusline+=\ %#SyntasticStatusLine#%{SyntasticStatuslineFlag()}%*

# %fe/%fw - номер строки с первой ошибкой/предупреждением
# %e/%w   - общее количество ошибок/предупреждений
g:syntastic_stl_format = '   %E{E:%fe #%e}%B{   }%W{W:%fw #%w}   '

# Стили и подветка интерфейса ошибок.
highlight SyntasticError ctermbg=9 ctermfg=15 guibg=#FF5555 guifg=#FFFFFF
highlight link SyntasticWarning        Visual
highlight link SyntasticStyleError     SyntasticError
highlight link SyntasticStyleWarning   SyntasticWarning
highlight link SyntasticErrorSign      SpecialKey
highlight link SyntasticWarningSign    NonText
highlight link SyntasticStyleErrorSign Identifier
highlight SyntasticStyleWarningSign ctermbg=0 ctermfg=215 guibg=#000000 guifg=#FFAF5F

# Отключаем агрессивное фоновое выделение всей строки с ошибкой (оставляем
# только знаки слева).
highlight SyntasticErrorLine        NONE
highlight SyntasticWarningLine      NONE
highlight SyntasticStyleErrorLine   NONE
highlight SyntasticStyleWarningLine NONE

# Динамический расчет высоты окна ошибок.
# Высота Location List == количество ошибок + 1, но не более 15 строк.
def g:SyntasticCheckHook(errors: list<dict<any>>)
    if !empty(errors)
        g:syntastic_loc_list_height = min([len(errors), 14]) + 1
    endif
enddef

# ==============================================================================
# КОНФИГУРАЦИЯ СИСТЕМНЫХ ЧЕКЕРОВ (CHECKERS)
# ==============================================================================

# Шеллы (sh/bash)
g:syntastic_sh_checkers = ['shellcheck', 'sh']
g:syntastic_sh_shellcheck_args = '-x'

# Vim
g:syntastic_vim_checkers = ['vint']

# Java
g:syntastic_java_checkers = ['javac']

# CSS
g:syntastic_css_checkers = ['csslint']

# C / C++ (Перенос строк без уродливых слэшей '\')
g:syntastic_filetype_map = {
    'c.doxygen': 'c',
    'cpp.doxygen': 'cpp'
}
g:syntastic_c_checkers = [
    'cppcheck',
    'clang_check',
    'clang_tidy',
    'gcc',
    'make'
]
g:syntastic_cpp_checkers = [
    'cppcheck',
    'clang_check',
    'clang_tidy',
    'gcc'
]

# Python
g:syntastic_python_python_exec = '/usr/bin/python3'
g:syntastic_python_pylint_exec = '/usr/bin/pylint3'
g:syntastic_python_checkers = [
    'pylint',
    'flake8',
    'pycodestyle',
    'pyflakes',
    'python'
]

# Флаги игнорирования мусорных варнингов Python
# E266 - too many leading '#' for block comment
# E501 - line too long
# W504 - line break occurred after a binary operator
g:syntastic_python_pylint_args      = '--rcfile=~/.pylintrc'
g:syntastic_python_flake8_args      = '--max-line-length=80 --ignore=E266'
g:syntastic_python_pycodestyle_args = '--ignore=E266,E501,W504'

# JavaScript
g:syntastic_javascript_checkers = ['jslint', 'eslint', 'jscs', 'jsl']
g:syntastic_javascript_jslint_args  = ''
g:syntastic_javascript_eslint_args  = ''
g:syntastic_javascript_jscs_args    = ''
g:syntastic_javascript_jsl_args     = ''
