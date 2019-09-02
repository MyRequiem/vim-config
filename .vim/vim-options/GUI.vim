scriptencoding utf-8

" vint: -ProhibitAbbreviationOption

" guifont, gfn - список шрифтов
" Type: string
" Default: ""
set guifont=Liberation\ Mono\ 10
" set gfn=

" guifontwide, gfw - список шрифтов для символов двойной ширины
" Type: string
" Default: ""
" set gfw=

" guioptions, go - список флагов определяющих какие компоненты GUI будут
" использованы
" Type: string
" Default: "aegimrLtT"
" удалить правый скроллбар
set guioptions-=r
set guioptions-=R
" удалить левый скроллбар
set guioptions-=l
set guioptions-=L
" отключить GUI вкладки
set guioptions-=e
" удалить тулбар
set guioptions-=T
" удалить строку меню
set guioptions-=m
" удалить значок Vim в левом верхнем углу окна
set guioptions-=i

" toolbar, tb - настрока тулбара
"   icons       - иконки рядом с кнопками
"   text        - текст рядом с кнопками
"   horiz       - иконки и текст в одну строку
"   tooltips    - всплывающие подсказки для кнопок
" Type: string
" Default: "icons,tooltips"
set tb=

" toolbariconsize, tbis - размер иконок тулбара:
" tiny, small, medium, large, huge
" Type: string
" Default: small

" guiheadroom, ghr - количество пикселей, отведенных на оформление окна и
" других объектов GUI интерфейса
" Type: number
" Default: 50
" set ghr=50

" guipty - использовать псевдо tty для I/O команд оболочки
" Type: boolean
" Default: on
" set guipty

" langmenu, lm - язык используемый для меню
" Type: string
" Default: ""
" set lm=

" menuitems, mis - максимальное количество пунктов для использования в меню
" Type: number
" Default: 25
" set mis=25

" winaltkeys, wak - как используется клавиша Alt
"   no      - не использовать для вызова меню, можно использовать в mappings
"   yes     - поведение Alt управляется оконным менеджером, можно использовать
"               в mappings
"   menu    - Alt используется в сочетании с клавишами быстрого вызова пунктов
"               меню
" Type: string
" Default: menu
" set wak=menu

" linespace, lsp - количество пикселей между символами
" Type: number
" Default: 0
" set lsp=0

" balloondelay, bdlay - задержка вывода тултипов при наведении мышкой на объект
" Type: number
" Default: 600
" set bdlay=600

" ballooneval, beval - позволяет отладчику отображать информацию о том, куда
" указывает мышь
" Type: boolean
" Default: off
" set nobeval

" balloonevalterm, bevalterm - использовать 'ballooneval' в терминале
" Type: boolean
" Default: off
" set nobevalterm

" balloonexpr, bexpr - текст, отображаемый в конце 'ballooneval'
" Type: string
" Default: ""
" set bexpr=
