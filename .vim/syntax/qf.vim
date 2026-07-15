vim9script

# syntax/qf.vim
# Кастомная подсветка элементов окна Quickfix (:copen).

# Защита от повторного парсинга (повторной загрузки), если синтаксис для
# буфера уже инициализирован.
if exists('b:current_syntax')
    finish
endif

# ==============================================================================
# ПРАВИЛА ПОИСКА СИНТАКСИСА (SYNTAX MATCH)
# ==============================================================================
# Ищем имя файла: всё от начала строки (^) до первой вертикальной черты (|).
# 'nextgroup=qfSeparator' - жестко приказывает Виму: "Как только этот паттерн
# закончился, сразу после него ищи группу qfSeparator". Это ускоряет парсинг.
syntax match qfFileName "^[^|]*" nextgroup=qfSeparator

# Ищем разделитель: символ вертикальной черты (|).
# 'contained' - КРИТИЧЕСКИ ВАЖНО: этот паттерн НЕ ищется сам по себе по всему
# файлу. Он может существовать только ТОГДА, когда находится внутри другой
# группы (в данном случае вызван по цепочке через nextgroup от qfFileName).
# 'nextgroup=qfLineNr' - передает эстафету дальше, заставляя искать номер
# строки.
syntax match qfSeparator "|" nextgroup=qfLineNr contained

# Ищем номер строки: всё, что идет после черты до следующего разделителя.
# 'contained' - ищется только по цепочке после qfSeparator.
# 'contains=qfError,qfWarning' - говорит Виму, что внутри этой группы текста
# могут встретиться отдельные ключевые слова "error" или "warning", которые
# нужно покрасить иначе.
syntax match qfLineNr "[^|]*" contained contains=qfError,qfWarning

# Ищем слово "error" внутри группы номера строки (из-за флага contains выше).
# 'contained' - защищает от случайного окрашивания слова "error", если оно
# написано в тексте ошибки.
syntax match qfError "error" contained

# Ищем слово "warning" внутри группы номера строки.
# 'contained' - красит слово только если оно находится строго в блоке номера
# строки/столбца.
syntax match qfWarning "warning" contained

# ==============================================================================
# ПРИВЯЗКА К ЦВЕТОВЫМ ГРУППАМ (HIGHLIGHT LNK)
# ==============================================================================
highlight! link qfFileName   SignColumn
highlight! link qfSeparator  Normal
highlight! link qfLineNr     DarkGreen
highlight! link qfError      SpecialKey
highlight! link qfWarning    NonText
highlight! link QuickFixLine ColorColumn

# Регистрируем текущий синтаксис буфера.
b:current_syntax = 'qf'
