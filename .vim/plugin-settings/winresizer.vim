vim9script

###
# :h winresizer.txt
###

# <Ctrl+l>        - активация

# Переключение подрежимов внутри плагина:
#    'r' - режим изменения размера (resize)
#    'm' - режим перемещения самого окна (move)
#    'f' - режим изменения фокуса окон (focus)
#    'e' - циклическое переключение режимов (mode)

# Отключение плагина.
# g:winresizer_enable = 0

# Клавиша активации режима.
g:winresizer_start_key = '<C-l>'

# Величина шага изменения размера (в символах/строках за одно нажатие)
g:winresizer_vert_resize  = 1
g:winresizer_horiz_resize = 1

# Настройка выхода:
# 1 - по <Escape>
# 0 - только по <Enter>/q
g:winresizer_finish_with_escape = 0

# ==============================================================================
# НАСТРОЙКА КЛАВИШ УПРАВЛЕНИЯ (ASCII-коды символов)
# ==============================================================================

# Навигация (h, j, k, l)
g:winresizer_keycode_left   = 104  # 'h' - сдвинуть границу влево / переместить окно влево
g:winresizer_keycode_down   = 106  # 'j' - сдвинуть вниз
g:winresizer_keycode_up     = 107  # 'k' - сдвинуть вверх
g:winresizer_keycode_right  = 108  # 'l' - сдвинуть вправо

# Переключение подрежимов внутри плагина
g:winresizer_keycode_resize = 114  # 'r' - режим изменения размера (resize)
g:winresizer_keycode_move   = 109  # 'm' - режим перемещения самого окна (move)
g:winresizer_keycode_focus  = 102  # 'f' - режим изменения фокуса окон (focus)
g:winresizer_keycode_mode   = 101  # 'e' - циклическое переключение режимов (mode)

# Завершение работы
g:winresizer_keycode_finish = 13   # <Enter> - применить изменения и выйти
g:winresizer_keycode_cancel = 113  # 'q' - отменить все изменения и вернуть как было
