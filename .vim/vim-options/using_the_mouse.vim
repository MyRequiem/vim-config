scriptencoding utf-8

" vint: -ProhibitAbbreviationOption

" mouse - список флаго для использования мыши
" Type: string
" Default: "", for GUI - 'a' (all, для всех режимов)
" set mouse=

" mousefocus, mousef - окно под указателем мыши становится текущим
" the window with the mouse pointer becomes the current one
" Type: boolean
" Default: off
" set nomousef

" mousehide, mh - прятать мышь при вводе текста
" hide the mouse pointer while typing
" Type: boolean
" Default: on
" set mh

" mousemodel, mousem - режим использования правой кнопки мыши
"   extend          - расширяет выделенное до позиции мыши при клике
"   popup           - вызывает контекстное меню, а с Shift расширяет выделенное
"   popup_setpos    - вызывает контекстное меню, передвигает курсор в позицию
"                       мыши, а с Shift расширяет выделенное
" Type: string
" Default: "extend"
set mousem=popup

" mousetime, mouset - время для распознавания двойного клика
" Type: number
" Default: 500
" set mouset=500

" ttymouse, ttym -  название типа терминала, для которого должны быть
" распознаны коды мыши
" Type: string
" Default: зависит от опции 'term'
" set ttym=xterm

" mouseshape, mouses - вид указателя мыши в различных режимах
" Type: string
" Default: "i-r:beam,s:updown,sd:udsizing,
"           vs:leftright,vd:lrsizing,m:no,
"           ml:up-arrow,v:rightup-arrow"
" set mouses=i-r:beam,s:updown,sd:udsizing,vs:leftright,vd:lrsizing,m:no,ml:up-arrow,v:rightup-arrow
