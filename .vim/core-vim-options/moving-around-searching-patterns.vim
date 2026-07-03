vim9script

###
# Настройки перемещения курсора и поиска текста в файле.
# Name: moving-around-searching-patterns
#
# :options
# 2 moving around, searching and patterns
###

# Запретить клавишам навигации переходить на соседние строки при достижении
# границ.
# Name: whichwrap (ww)
# Type: string
# Default: b,s    (разрешен сквозной переход для Backspace и Пробела)
#
# Пустая строка гарантирует, что при зажатой, например, 'l', курсор жестко
# зафиксируется в конце текущей строки и не улетит на следующую.
&whichwrap = ''

# При поиске через '/' подсвечивать первое совпадение на лету, прямо во время
# ввода слова. Избавляет от необходимости каждый раз нажимать Enter, чтобы
# увидеть, есть ли слово в коде.
# Name: incsearch (is)
# Type: boolean
# Default: false
&incsearch = true

# Программа, используемая Vim для глобального поиска по файлам проекта через
# команду ':grep'.
# Name: grepprg (gp)
# Type: string
# Default: "grep -n $* /dev/null"
&grepprg = 'grep -r --line-number $*'
