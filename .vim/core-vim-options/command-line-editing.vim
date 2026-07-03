vim9script

###
# Настройки редактирования и поведения командной строки.
# Name: command-line-editing
#
# :options
# 21 command line editing
###

# Клавиша для автодополнения команд из скриптов, макросов и маппингов.
# Если опция 'wildchar' (по умолчанию <Tab>) реагирует только на физическое
# нажатие, то 'wildcharm' позволяет симулировать автодополнение программно.
# Name: wildcharm (wcm)
# Type: number
# Default: 0 (none)
#
# :echo char2nr("\<Tab>") -> 9
&wildcharm = 9
