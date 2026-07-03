vim9script

###
# Настройки обработки многобайтовых символов и кодировок (UTF-8). Корректное
# чтение кириллицы, автоопределение кодировок файлов и терминала.
# Name: multi-byte-characters
#
# :options
# 25 multi-byte characters
###

# Внутренняя кодировка Vim для работы с символами и буферами. Установка UTF-8
# необходима для поддержки Unicode и корректного рендеринга иконок.
# Name: encoding (enc)
# Type: string
# Default: значение переменной окружения $LANG или "latin1"
&encoding = 'utf-8'

# Кодировка по умолчанию для новых создаваемых файлов.
# Name: fileencoding (fenc)
# Type: string
# Default: ""
&fileencoding = 'utf-8'

# Список кодировок, которые Vim по очереди перебирает при открытии
# существующего файла. Позволяет автоматически и без багов читать старый код
# (Windows/DOS) и логи.
# Name: fileencodings (fencs)
# Type: string
# Default: "ucs-bom,utf-8,default,latin1"
&fileencodings = 'utf-8,'
              .. 'cp1251,' # Windows (часто встречается в старом коде C++)
              .. 'koi8-r,' # старая кодировка Unix/Linux
              .. 'cp866,'  # кодировка DOS (для логов старого оборудования)
              .. 'ucs-2'   # двухбайтовый Unicode

# Кодировка, в которой Vim общается с терминалом (эмулятором терминала).
# Name: termencoding (tenc)
# Type: string
# Default: ""
&termencoding = 'utf-8'

# Использовать встроенный внутренний движок Vim для изменения регистра букв
# (gu, gU, ~). Исключает баги системных библиотек Linux (towupper/towlower)
# при работе с кириллицей в UTF-8.
# Name: casemap (cmp)
# Type: string
# Default: "internal,keepascii"
&casemap = 'internal'
