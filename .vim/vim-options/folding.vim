scriptencoding utf-8

" vint: -ProhibitAbbreviationOption

" foldenable, fen - включить отображение складок
" Type: boolean
" Default: on
" set fen

" foldlevel, fdl - складки с уровнем выше значения параметра будут закрыты
" Type: number
" Default: 0
" set fdl=0

" foldlevelstart, fdls - значение для опции 'foldlevel' при начале
" редактирования другого буфера в окне
"   0   - складки закрыты
"   99  - нет закрытых складок
"   -1  - опция не используется
" Type: number
" Default: -1
set fdls=0

" " foldcolumn - ширина столбца с левой стороны окна, где отображаются метки
" складок
" Type: number
" Default: 0
set fdc=4

" foldtext, fdt - выражение, используемое для отображения текста закрытой
" складки
" Type: string
" Default: "foldtext()"
" set fdt=foldtext()

" foldclose, fcl - складка закрывается, когда курсор выходит за ее пределы
"   all - закрывать
" Type: string
" Default: ""
" set fcl=

" foldopen, fdo - указывает, для каких команд открывается складка
"   all         - любая
"   block       - '(', '{', '[[', '[{', и т.д.
"   hor         - горизондальное движение: 'l', 'w', 'fx', и т.д.
"   insert      - любые команды в insert mode
"   jump        - прыжки по буферу 'G', 'gg', и т.д.
"   mark        - переход к метке '`m', CTRL-O, и т.д.
"   percent     - '%'
"   quickfix    - ':cn', ':crew', ':make', и т.д.
"   search      - поиск командами '/', 'n', '*', 'gd', и т.д.
"   tag         - переход к тэгу ':ta', <Ctrl-t>, и т.д.
"   undo        - undo или redo командами 'u' и <Ctrl-r>
" Type: string
" Default: "block,hor,mark,percent,quickfix,search,tag,undo"
set fdo=block,hor,mark,percent,quickfix,search,tag,undo

" foldminlines, fml - минимальное количество строк  для складки
" minimum number of screen lines for a fold to be closed
" Type: number
" Default: 1
" set fml=1

" commentstring, cms - шаблон для комментария. Применяется только для установки
" маркеров складок в режиме marker (см. :help fold-marker)
" Type: string
" Default: "/*%s*/"
" set cms=/*%s*/

" foldmethod, fdm - методы фолдинга
"   manual  - складки создаются вручную (выделение и 'zf'). Теряются при
"               закрытии буфера и для их сохранения нужно использовать
"               ':mkview' перед закрытием файла, а для их восстановления
"               использовать ':loadview' после открытия файла
"   indent  - складки автоматически определяютс по отступам
"   expr    - как indent, но оценивается значение параметра 'foldexpr', чтобы
"               получить уровень складки
"   marker  - складки создаются на основе маркеров в тексте. Символы маркеров
"               определяются параметром 'foldmarker'
"               лоло где складки начинаются и заканчиваются. Это позволяет вам
"   syntax  - складки определяются элементами синтаксиса
"   diff    - в vimdiff (опция 'diff' установлена) помещает в складки не
"               измененный текст. Метод автоматически устанавливается при
"               запуске vimdiff
" Type: string
" Default: "manual"
" set fdm=manual

" foldexpr, fde - выражение, используемое для определения складок методом 'expr'
" Type: string
" Default: 0
" set fde=0

" foldignore, fdi - используется для игнорирования строк в складках, когда
" 'foldmethod' установлен в 'indent'. По умолчанию игнорируются комментарии,
" начинающиеся с '#'
" Type: string
" Default: "#"
" set fdi=#

" foldmarker, fmr - указание маркеров начала и конца складок если 'foldmethod'
" установлен в 'marker'
" Type: string
" Default: "{{{,}}}"
" set fmr={{{,}}}

" foldnestmax, fdn - максимальная глубина вкладок если 'foldmethod' установлен
" в 'syntax'
" Type: number
" Default: 20
" set fdn=20
