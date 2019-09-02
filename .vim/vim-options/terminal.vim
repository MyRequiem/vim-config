scriptencoding utf-8

" vint: -ProhibitAbbreviationOption

" term - имя терминала
" Type: string
" Default: значение переменной $TERM
" set term=screen-256color

" ttytype, tty - псевдоним для опции 'term'
" Type: string
" Default: значение переменной $TERM
" set tty=screen-256color

" ttybuiltin, tbi - сначала поиск встроенного termcaps, затем внешнего
" Type: boolean
" Default: on
" set tbi

" ttyfast, tf - быстрое подключение терминала
" Type: boolean
" Default: off, но если 'term' один из: xterm, hpterm, sun-cmd, screen, rxvt,
"           dtterm или iris-ansi, то включается автоматически
" set tf

" weirdinvert, wiv - терминал, который требует дополнительной перерисовки
" Type: boolean
" Default: off
" set nowiv

" esckeys, ek - распознавать последовательность клавиш, начинающиеся с escape
" последовательности, например стрелки
" в режиме вставки
" Type: boolean
" Default: on
" set ek

" scrolljump, sj - минимальное количество строк для прокрутки
" Type: number
" Default: 1
" set sj=1

" ttyscroll, tsl - максимальное количество строк для прокрутки экрана. Если
" строк больше, окно перерисовывается
" Type: number
" Default: 999
" set tsl=999

" guicursor, gcr - вид курсора в различных режимах для GUI
" Type: string
" Default: "n-v-c:block-Cursor/lCursor,
"           ve:ver35-Cursor,
"           o:hor50-Cursor,
"           i-ci:ver25-Cursor/lCursor,
"           r-cr:hor20-Cursor/lCursor,
"           sm:block-Cursor-blinkwait175-blinkoff150-blinkon175"
set gcr=a:hor1-Cursor/lCursor,a:blinkon500,a:blinkoff500,a:blinkwait100

" title - установка заголовка окна в значение 'titlestring' или в
" 'filename [+=-] (path) - VIM' (если 'titlestring' пустая)
" Type: boolean
" Default: off, но если заголовок может быть установлен, то автоматически 'on'
set notitle

" titlelen - ширина заголовка окна в процентах от количества колонок в окне
" Type: number
" Default: 85
" set titlelen=85

" titlestring - строка заголовка
" Type: string
" Default: ""
" set titlestring=

" titleold - строка для восстановления заголовка при выходе из Vim
" string to restore the title to when exiting Vim
" Type: string
" Default: "Thanks for flying Vim"
" set titleold=Thanks\ for\ flying\ Vim

" icon - разрешает установка текста для иконки окна
" Type: boolean
" Default: off, но если заголовок может быть восстановлени то автматически 'on'
" set icon

" iconstring - если не пустая, текст для значка окна
" Type: string
" Default: ""
" set iconstring=
