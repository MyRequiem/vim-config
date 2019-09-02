scriptencoding utf-8

" vint: -ProhibitAbbreviationOption

" maxmapdepth, mmd - максимальная глубина маппинга
" Type: number
" Default: 1000
" set mmd=1000

" remap - позволяет маппингу работать рекурсивно. Для обхода рекурсии вместо
" команды map используется команда noremap
" Type: boolean
" Default: on
" set remap

" timeout, to - разрешить таймаут при маппинге
" Type: boolean
" Default: on
" set to

" ttimeout - поведение таймаута в маппингах в зависимости от значения опции
" 'timeout'
"   'timeout'   'ttimeout'      action
"   off         off             нет таймаута
"   on          on or off       таймаут включен для маппинга и кодов клавиш
"   off         on              таймаут включен для кодов клавиш
" Type: boolean
" Default: off
" set nottimeout

" timeoutlen, tm - значение таймаута для 'timeout' (ms)
" Type: number
" Default: 1000
" set tm=1000

" ttimeoutlen, ttm - значение таймаута для 'ttimeout' (ms)
" Type: number
" Default: -1
" set ttm=-1
