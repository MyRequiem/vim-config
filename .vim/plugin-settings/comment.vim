scriptencoding utf-8

" отключаем загрузку плагина
" let g:loaded_comment = 1

" default: gcc
let g:comment_hotkey          = 'gc'
" default: gC
" let g:comment_hotkey_manually = 'gC'

" комметировать пустые строки (default: 1)
" let g:comment_blank_lines     = 1

" default value: /* %s */
let g:comment_default_chars   = '# %s'

let g:comment_asm_chars       = '# %s'
let g:comment_privoxy_chars   = '# %s'
let g:comment_gas_chars       = '# %s'
let g:comment_samba_chars     = '# %s'
let g:comment_c_doxygen_chars = '/**< %s */'
