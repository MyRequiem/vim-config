vim9script

###
# Настройки подсветки синтаксиса, внешнего вида и проверки орфографии.
# Name: syntax-highlighting-spelling

# :options
# 5 syntax, highlighting and spelling
###

# Сообщить Vim, что используется темная тема оформления. Не меняет цвет фона
# сам по себе, а заставляет Vim выбирать контрастные и яркие цвета для
# ключевых/зарезервированных слов (if, for, class).
# Name: background (bg)
# Type: string
# Default: "dark" или "light" (в зависимости от используемого терминала)
&background = 'dark'

# Снять ограничение на длину строки для подсветки синтаксиса (по умолчанию
# первые 3000 символов строки). Значение '0' гарантирует, что Vim правильно
# подсветит код даже в экстремально длинных строках (актуально для
# минифицированных файлов или огромных JSON).
# Name: synmaxcol (smc)
# Type: number
# Default: 3000
&synmaxcol = 0

# Подсвечивать все найденные совпадения в файле во время поиска.
# Name: hlsearch (hls)
# Type: boolean
# Default: false
&hlsearch = true

# Визуально выделять (подчеркиванием или полосой) текущую строку, где
# находится курсор.
# Name: cursorline (cul)
# Type: boolean
# Default: false
&cursorline = true

# Подсвечивать указанные через запятую номера колонок.
# Name: colorcolumn (cc)
# Type: string
# Default: ""
&colorcolumn = "81"

# Список языков для встроенной проверки орфографии (':set spell').
# Name: spelllang (spl)
# Type: string
# Default: 'en'
&spelllang = 'en_us,ru_ru'

# Путь к личному словарю пользователя, куда Vim сохраняет новые слова. Сюда
# попадают исключения, добавленные командами 'zg' (хорошее слово) и 'zw'
# (опечатка).
# Name: spellfile (spf)
# Type: string
# Default: ""
&spellfile = $HOME .. '/.vim/spell/added-by-user.utf-8.add'

# Алгоритм сортировки подсказок при исправлении слов (меню по нажатию 'z=').
# Значение 'best' выводит самые подходящие по смыслу варианты в начале списка.
# Name: spellsuggest (sps)
# Type: string
# Default: "best"
&spellsuggest = 'best'
