scriptencoding utf-8

" vint: -ProhibitAbbreviationOption -ProhibitEncodingOptionAfterScriptEncoding

" encoding, enc - кодировка символов: 'latin1', 'utf-8', 'euc-jp', 'big5' и т.д.
" Type: string
" Default: "latin1" или $LANG
set enc=utf-8

" fileencoding, fenc
" character encoding for the current file
" Type: string
" Default: ""
set fenc=utf-8

" fileencodings, fencs - автоматически определять кодировку из списка
" Type: string
" Default: "ucs-bom,utf-8,default,latin1"
set fencs=utf-8,cp1251,koi8-r,cp866,ucs-2

" termencoding, tenc - кодировка терминала
" Type: string
" Default: ""
set tenc=utf-8

" charconver, ccv - выражение, используемое для преобразования кодировки
" символов
" Type: string
" Default: ""
" set ccv=

" delcombine, deco - метод удаления символов командой 'x' в normal mode. Полезен
" для арабского, иврита и многих других языков, где одна буква может иметь
" комбинацию символов поверх базовых символов
" Type: boolean
" Default: off
" set nodeco

" maxcombine, mco - максимальное количество комбинируемых символов, которые
" будут отображаться (только для unicode. Иврит может потребовать значения 4,
" максимальное значение 6)
" Type: number
" Default: 2
" set mco=2

" ambiwidth, ambw - ширина символов, имеющих неоднозначную ширину (символы евро,
" зарегистрированный товарный знак, знак авторского права и т.д.)
"   single  - использовать ту же ширину, что и символы в US-ASCII
"   double  - использовать удвоенную ширину символов ASCII
" Type: string
" Default: "single"
" set ambw=single

" emoji, emo - не уменьшать ширину юникодных смайликов
" Type: boolean
" Default: on
" set emo
