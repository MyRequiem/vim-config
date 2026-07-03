vim9script

###
# Настройки отступов, табуляции и выравнивания текста.
# Name: tabs-and-indenting
#
# :options
# 15 tabs and indenting
###

# Ширина, которой на экране отображается уже существующий в файле символ
# табуляции (\t).
# Name: tabstop (ts)
# Type: Number
# Default: 8
&tabstop = 4

# Шаг автоматического отступа кода (для команд выравнивания '>', '<' и
# автоотступов после Enter).
# Name: shiftwidth (sw)
# Type: Number
# Default: 8
&shiftwidth = 4

# Нажатие Tab в начале строки (если быть точнее, до первого непробельного
# символа в строке) приведет к добавлению отступа, ширина которого
# соответствует 'shiftwidth'
#
# Разрешить умную табуляцию. В начале строки клавиша <Tab> делает отступ сразу
# на 'shiftwidth', а в середине строки ведет себя как обычно.
# Name: smarttab (sta)
# Type: boolean
# Default: false
&smarttab = true

# Сколько пробелов вставляется или удаляется при одном нажатии клавиш <Tab>
# или '<Ctrl+h>', <Backspace>.
# Name: softtabstop (sts)
# Type: Number
# Default: 0
&softtabstop = 4

# Округлять отступы до ближайшего кратного значения 'shiftwidth' при
# использовании команд '>' и '<'. Исправляет «кривые» отступы (например,
# выравнивает 3 пробела до правильных 4).
# Name: shiftround (sr)
# Type: boolean
# Default: false
&shiftround = true

# Заменять физический символ табуляции на соответствующее количество пробелов
# в режиме вставки. Гарантирует, что код во всех редакторах и на GitHub будет
# выглядеть одинаково.
# Name: expandtab (et)
# Type: Boolean
# Default: false
&expandtab = true
