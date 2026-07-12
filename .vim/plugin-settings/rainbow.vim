vim9script

###
# :h rainbow
###

# :RainbowToggle - вкл/выкл плагин

# Включить глобально.
g:rainbow_active = 1

# https://github.com/luochen1990/rainbow#configure
g:rainbow_conf = {
    'guifgs': ['green', 'yellow', 'cyan', 'magenta'],
    'ctermfgs': ['green', 'yellow', 'cyan', 'magenta'],
    'main': {
        'parentheses': [
            'start=/(/ end=/)/ contains=NONE',
            'start=/\[/ end=/\]/ contains=NONE',
            'start=/\v\{/ end=/\v\}/ contains=NONE'
        ],
    },
    'separately': {
        'html': 0
    }
}
