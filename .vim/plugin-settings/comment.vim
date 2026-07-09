vim9script

###
# :h comment.txt
###

# Отключаем загрузку плагина.
# g:loaded_comment = 1

# Сочетание клавиш для установки/снятия комментариев символами по умолчанию
# (Default: gcc).
g:comment_hotkey          = 'gc'
# Сочетание клавиш для установки/снятия комментариев символами, указанными
# пользователем (Default: gcc).
g:comment_hotkey_manually = 'gC'

# Комметировать пустые строки (Default: 1).
# g:comment_blank_lines = 1

# Символ комментария по умолчанию (Default: /* %s */).
g:comment_default_chars    = '# %s'

# Символы комментариев установленные пользователем для указанных &filetype.
# Синтаксис:
#    g:comment_<&filetype>_chars = '<symb> %s[symb]'
g:comment_asm_chars       = '# %s'
g:comment_lilo_chars      = '# %s'
g:comment_gtkrc_chars     = '# %s'
g:comment_c_doxygen_chars = '/**< %s */'
