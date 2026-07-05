vim9script

###
# Настройки горячих клавиш, клавиатурных сочетаний и тайм-аутов.
# Name: mapping
#
# :options
# 18 mapping
###

# Время ожидания (ms) завершения комбинации клавиш (маппинга).
# Name: timeoutlen (tm)
# Type: number
# Default: 1000
&timeoutlen = 800

# Определяет, будет ли использоваться отдельный тайм-аут для системных кодов
# клавиш (например, Esc). Включение этой опции позволяет задать независимое
# время ожидания в параметре 'ttimeoutlen'.
# Name: ttimeout
# Type: boolean
# Default: false
&ttimeout = true

# Время ожидания (ms) завершения системных кодов клавиш (например, Esc).
# Значение '10' убирает микро-задержку для выхода в Normal Mode из других
# режимов.
# Name: ttimeoutlen (ttm)
# Type: number
# Default: -1 (значение копируется из timeoutlen)
&ttimeoutlen = 10
