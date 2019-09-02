scriptencoding utf-8

" vint: -ProhibitAbbreviationOption

" printoptions, popt - список элементов, управляющих форматом вывода: отступы,
" заголовки, номера строк и т.д. (см. :help popt-option)
" Type: string
" Default: ""
" set popt=

" printdevice, pdev - название принтера
" Type: string
" Default: ""
" set pdev=

" printexpr, pexpr - выражение, используемое для печати PostScript файлов
" (см. :help pexpr-option)
" Type: string
" Default: "system('lpr' . (&printdevice == '' ? '' : ' -P' . &printdevice) . ' ' . v:fname_in) . delete(v:fname_in) + v:shell_error"
" set pexpr=system('lpr'\ .\ (&printdevice\ ==\ ''\ ?\ ''\ :\ '\ -P'\ .\ &printdevice)\ .\ '\ '\ .\ v:fname_in)\ .\ delete(v:fname_in)\ +\ v:shell_error

" printfont, pfn - имя шрифта
" Type: string
" Default: "courier"
" set pfn=courier

" printheader, pheader - формат заголовка (см. :help pheader-option)
" format of the header used for :hardcopy
" Type: string
" Default: "%<%f%h%m%=Page %N"
" set pheader=%<%f%h%m%=Page\ %N

" printencoding, penc - кодировка, используемая для печати файла PostScript
" (см. :help penc-option)
" Type: string
" Default: ""
" set penc=

" printmbcharset, pmbcs - набор символов CJK, который будет использоваться
" для вывода CJK (см. :help pmbcs-option)
" Type: string
" Default: ""
" set pmbcs=

" printmbfont, pmbfn - список шрифтов, которые будут использоваться для
" вывода CJK (см. :help pmbfn-option)
" list of font names to be used for CJK output
" Type: string
" Default: ""
" set pmbfn=
