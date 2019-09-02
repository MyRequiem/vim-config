scriptencoding utf-8

" vint: -ProhibitAbbreviationOption

" showtabline, stal - когда показывать строку вкладок
"   0 - никогда
"   1 - только если открыто более одной вкладки
"   2 - всегда
" Type: number
" Default: 1
set stal=2

" tabpagemax, tpm - максимальное количество вкладок, которое можно будет
" создать с параметром командной строки '-p' или командой ':tab ball'
" Type: number
" Default: 10
" set tpm=10

" tabline, tal - определяет содержимое строки вкладок (если пустой, то строка
" вкладок по умолчанию). См. 'help setting-tabline'
" Type: string
" Default: ""
set tabline=%!tabs#ShortTabLine()

" guitablabel, gtl - содержимое GUI-вкладок
" Type: string
" Default: ""
" set gtl=

" guitabtooltip - содержимое GUI-тултипов (всплавающие подсказки при наведении
" мышкой на вкладку)
" Type:
" Default:
" set gtt=
