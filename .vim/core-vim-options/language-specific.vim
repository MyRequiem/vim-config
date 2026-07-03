vim9script

###
# Настройки для работы со специфическими языками и национальными раскладками.
# Name: language-specific
#
# :options
# 24 language specific
###

# Позволяет использовать команды Vim в русской раскладке клавиатуры (не нужно
# переключаться на английский в Normal Mode, чтобы нажать j, k, x, d и т.д.).
# Name: langmap (lmap)
# Type: string
# Default: ""
#
# Полное сопоставление русской и английской раскладок написано в один ряд без
# конкатенации, чтобы избежать багов парсера UTF-8.
&langmap = "ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz,ЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;QWERTYUIOP{}ASDFGHJKL:\"ZXCVBNM<>,йцукенгшщзхъфывапролджэячсмитьбю;qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,."
