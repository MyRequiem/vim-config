scriptencoding utf-8

nnoremap <silent><F3> :SyntasticCheck<cr>

let g:syntastic_check_on_wq              = 0
let g:syntastic_aggregate_errors         = 1
let g:syntastic_error_symbol             = '▶'
let g:syntastic_warning_symbol           = '▶'
let g:syntastic_style_error_symbol       = '≫'
let g:yntastic_style_warning_symbol      = '≫'
let g:syntastic_enable_balloons          = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_exit_checks              = 0

" всегда в пассивном режиме, проверка только при вызове :SyntasticCheck
let g:syntastic_mode_map = {
    \ 'mode': 'passive',
    \ 'active_filetypes': [],
    \ 'passive_filetypes': []
\}

" :h syntastic_stl_format
highlight SyntasticStatusLine term=NONE cterm=NONE ctermfg=15 ctermbg=1 gui=NONE guisp=NONE guifg=#FFFFFF guibg=#AA0000
set statusline+=\ %#SyntasticStatusLine#%{SyntasticStatuslineFlag()}%*
" %e/%w     - общее количество ошибок/предупреждений
" %fe/%fw   - номер строки с первой ошибкой/предупреждением
let g:syntastic_stl_format = '   %E{E:%fe #%e}%B{   }%W{W:%fw #%w}   '

highlight SyntasticError term=NONE cterm=NONE ctermfg=15 ctermbg=9  gui=NONE guisp=NONE guifg=#FFFFFF guibg=#FF5555
highlight! link SyntasticWarning        Visual
highlight! link SyntasticStyleError     SyntasticError
highlight! link SyntasticStyleWarning   SyntasticWarning

highlight! link SyntasticErrorSign      SpecialKey
highlight! link SyntasticWarningSign    NonText
highlight! link SyntasticStyleErrorSign Identifier
highlight SyntasticStyleWarningSign term=NONE cterm=NONE ctermfg=215  ctermbg=NONE gui=NONE guisp=NONE guifg=#FFAF5F guibg=NONE

highlight SyntasticErrorLine        NONE
highlight SyntasticWarningLine      NONE
highlight SyntasticStyleErrorLine   NONE
highlight SyntasticStyleWarningLine NONE

" высота Location List == количество ошибок + 1, но не > 15
" функция вызывается плагином автоматически
function! SyntasticCheckHook(errors)
    if !empty(a:errors)
        let g:syntastic_loc_list_height = min([len(a:errors), 14]) + 1
    endif
endfunction

""" Checkers
" sh
let g:syntastic_sh_checkers        = ['shellcheck', 'sh']
let g:syntastic_sh_shellcheck_args = '-x -e SC2039,SC1090,SC2139,SC2016,SC1083'
" vim
let g:syntastic_vim_checkers       = ['vint']
" C, C++
let g:syntastic_filetype_map       = {
                                        \ 'c.doxygen': 'c',
                                        \ 'cpp.doxygen': 'cpp'
                                    \}
let g:syntastic_c_checkers         = [
                                        \ 'cppcheck',
                                        \ 'clang_check',
                                        \ 'clang_tidy',
                                        \ 'gcc',
                                        \ 'make'
                                   \ ]
let g:syntastic_cpp_checkers       = [
                                        \ 'cppcheck',
                                        \ 'clang_check',
                                        \ 'clang_tidy',
                                        \ 'gcc'
                                   \ ]

" python
let g:syntastic_python_python_exec = '/usr/bin/python3'
let g:syntastic_python_pylint_exec = '/usr/bin/pylint3'
let g:syntastic_python_checkers    = [
                                        \ 'pylint',
                                        \ 'flake8',
                                        \ 'pycodestyle',
                                        \ 'pyflakes',
                                        \ 'python'
                                     \]
" E266 - too many leading '#' for block comment
" E501 - line too long
" W504 - line break occurred after a binary operator
let g:syntastic_python_pylint_args      = '--rcfile=~/.pylintrc'
let g:syntastic_python_flake8_args      = '--max-line-length=80 --ignore=E266'
let g:syntastic_python_pycodestyle_args = '--ignore=E266,E501,W504'
" javascript
let g:syntastic_javascript_checkers     = ['jslint', 'eslint', 'jscs', 'jsl']
let g:syntastic_javascript_jslint_args  = ''
let g:syntastic_javascript_eslint_args  = ''
let g:syntastic_javascript_jscs_args    = ''
let g:syntastic_javascript_jsl_args     = ''
" css
let g:syntastic_css_checkers            = ['csslint']
