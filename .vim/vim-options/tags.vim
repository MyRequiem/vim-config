scriptencoding utf-8

" vint: -ProhibitAbbreviationOption

" tagbsearch, tbs - использовать двоичный поиск в файле тегов. Двоичный поиск
" тегов намного быстрее, но линейный поиск найходит больше тегов, если
" файл тегов не был правильно отсортирован.
" Type: boolean
" Default: on
" set tbs	notbs

" taglength, tl - количество значащих символов в имени тега.
"   0       - все символы значимые
"   > 0     - теги значимы до указанного количества символов
" Type: number
" Default: 0
" set tl=0

" tags, tag - список имен файлов для поиска тегов. Например, чтобы создать
" файл тэгов для всех системных заголовочных файлов, используем команду:
"   $ ctags -R -f ~/.vim/tags /usr/include /usr/local/include
" или для всех тэгов файлов *.c в текущей директории:
"   $ ctags *.c
" Type: string
" Default: "./tags,./TAGS,tags,TAGS"
set tag=./tags,$HOME/.vim/tags

" tagcase, tc - как обрабатывать регистр символов при поиске в файлах с тегами:
"   followic    - как в опции 'ignorecase'
"   followscs   - как в опциях 'smartcase' и 'ignorecase'
"   ignore      - игнорировать регистр
"   match       - поиск по совпадениям
" Type: string
" Default: "followic"
" set tc=followic

" tagrelative, tr - имена файлов в файле тегов относительные по отношения к
" расположению самого файла тегов
" Type: boolean
" Default: on
" set tr

" tagstack, tgst - использовать tagstack командой ':tag' в котором запоминается
" к каким тегам уже переходили и откуда
" Type: boolean
" Default: on
" set tgst

" showfulltag, sft - при автодополнении тэгов в режиме insert показывать
" расширенную информацию из файла тэгов (шаблоны для аргументов функций и др.)
" Могут быть проблемы при установленной опции 'completeopt'
" Type: boolean
" Default: off
" set nosft

" tagfunc, tfu - функция, которая будет использоваться для поиска тегов
" Type: string
" Default: ""
" set tfu=

" cscopeprg, csprg - команда запуска cscope
" Type: string
" Default: "cscope"
" set csprg=cscope

" cscopetag, cst - использовать программу cscope для команды ':tag'
" Type: boolean
" Default: off
" set nocst

" cscopetagorder, csto - порядок, в котором команда ':cstag' выполняет поиск
"   0 - сначала поиск по базам данных cscope, а затем по файлам тегов
"   1 - сначала в файлах тегов, потом в базе данных cscope
" Type: number
" Default: 0
" set csto=0

" cscopeverbose, csverb - выводить сообщения при добавлении в базу данных cscope
" Type: boolean
" Default: off
" set nocsverb

" cscopepathcomp, cspc - количество компонентов пути файла для вывода
"   0       - полный путь
"   1       - только имя файла
"   2,3...  - 2, 3 и т.д. компонентов пути
" Type: number
" Default: 0
" set cspc=0

" cscopequickfix, csqf - как использовать окно quickfix для отображения cscope
" Каждое значение состоит из команд поиска cscope (s, g, d, c, t, e, f, i, a)
"   +/-     - выводить/не выводить указанные результаты поиска, например:
"               :set cscopequickfix=s-,c-,d-,i-,t-,e-,a-
" Type: string
" Default: ""
" set csqf=

" cscoperelative, csre - имена файлов в файле cscope относительные по отношению
" к расположению самого файла cscope (обычно это cscope.out, который
" располагается в корне проекта)
" Type: boolean
" Default: off
" set nocsre
