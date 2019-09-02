scriptencoding utf-8

" vint: -ProhibitAbbreviationOption

" history, hi - количество команд и шаблонов поиска, которые будут сохранятся
" в истории
" Type: number
" Default: 50
set hi=300

" wildchar, wc - символ для автодополнения команд
" Type: number
" Default: 9 (<Tab>)
" set wc=9

" wildcharm, wcm - как 'wildchar', но так же можно использовать в
" маппингах, например для вывода автодополнения для пунктов меню
" Type: number
" Default: 0
set wcm=<Tab>

" wildmode, wim - определяет, как работает автодополнение командной строки
"   ''              - только первое совпадение
"   'full'          - все совпадения по кругу
"   'longest'       - если по набранному шаблону найдено только одно совпадение
"   'longest:full'  - как 'longest', но запускает 'wildmenu' если оно включено
"   'list'          - если более одного совпадения, то выводит весь список
"   'list:full'     - как 'list' + 'wildmenu'
"   'list:longest'  - как 'list' + вставляет совпадения в командную строку
" Type: string
" Default: full
" set wim=full

" suffixes, su - список расширений файлов с более низким приоритетом
" Type: string
" Default: ".bak,~,.o,.h,.info,.swp,.obj"
" set su=.bak,~,.o,.h,.info,.swp,.obj

" suffixesadd, sua - список расширений файлов, которые будут использоваться
" при поиске файла по команде 'gf'
" Type: string
" Default: ""
" set sua=

" wildignore, wig - список шаблонов, которые будут игнорироваться при
" автодополнении
" Type: string
" Default: ""
set wig=*.o,*.obj

" fileignorecase, fic - игнорировать регистр при вводе имен файлов
" Type: boolean
" Default: off
" set nofic

" wildignorecase, wic - игнорировать регистр при автодополнении имен файлов
" Type: boolean
" Default: off
" set nowic

" wildmenu, wmnu - отображение всего списка дополнений в меню
" Type: boolean
" Default: off
set wmnu

" cedit - комбинация клавиш для открытия окна истории командной строки
" Type: string
" Default: 
set cedit=

" cmdwinheight, cwh - высота окна истории командной строки
" Type: number
" Default: 7
" set cwh=7
