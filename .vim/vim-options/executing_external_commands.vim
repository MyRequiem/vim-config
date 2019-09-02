scriptencoding utf-8

" vint: -ProhibitAbbreviationOption

" shell, sh - имя оболочки (bash, zsh, csh и т.д.)
" Type: string
" Default: $SHELL или 'sh'
" set sh=/bin/bash

" shellquote, shq - символы, которые будут добавляться вокруг введенной команды
" при передаче в shell
" Type: string
" Default: ""
" set shq=

" shellxquote, sxq - как 'shellquote', но включает перенаправление
" Type: string
" Default: ""
" set sxq=

" shellxescape, sxe - если в 'shellxquote' установлены символы, то они будут
" экранироваться символом '^' (для cmd.exe)
" Type: string
" Default: ""
" set sxe=

" shellcmdflag, shcf - аргументы для shell
" Type: string
" Default: "-c"
" set shcf=-c

" shellredir, srr - параметры, используемые для перенаправления вывода команды в
" файл
" Type: string
" Default: ">%s 2>&1"
" set srr=>%s\ 2>&1

" shelltemp, stmp - использовать временный файл для команд оболочки вместо
" использования pipe
" Type: boolean
" Default: on
" set stmp

" equalprg, ep - внешняя программа для форматирования текста командой '='
" (если опция пуста, то используются внутренние функции форматирования: lisp,
" cindent или indentexpr)
" Type: string
" Default: ""
" set ep=

" formatprg, fp - внешняя программа для форматирования текста командой 'gq'
" Type: string
" Default: ""
" set fp=

" keywordprg, kp - внешняя программа для испльзования командой 'K' (просмотр
" мануала по слову под курсором)
" Type: string
" Default: 'man' or 'man -s'
" set kp=man\ -s

" warn - выдавать предупреждающее сообщение при запуске команды shell, в то
" время как буфер был изменен
" Type: boolean
" Default: on
" set warn
