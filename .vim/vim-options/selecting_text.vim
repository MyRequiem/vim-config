scriptencoding utf-8

" vint: -ProhibitAbbreviationOption

" selection, sel - определяет поведение выделения текста в visual and
" select mode
"   old         - при перемещении в конец строки символ переноса строки не
"                   захватывается
"   inclusive   - захватывает выделение целиком
"   exclusive   - последний символ выделения не учитывается
" Type: string
" Default: "inclusive"
" set sel=inclusive

" selectmode, slm - когда включается select mode вместо visual mode
"   mouse   - когда выделяем мышью
"   key     - когда используются например <Shift-Left>, <Shift-End>
"               и опция 'keymodel' установлена в startsel
"   cmd     - когда используются команды 'v', 'V', <Ctrl-v>
" Type: string
" Default: ""
set slm=

" clipboard, cb - как и в каких регистрах сохранять скопированный текст
"   unnamed         - использовать регистр буфера обмена '*' для всех
"                       копирований. Обычно используется как primary буфер,
"                       т.е. для сохранения всех выделений текста.
"   unnamedplus     - использовать регистр буфера обмена '+' вместо '*' для всех
"                       копирований (Vim должен быть собран с поддержкой +X11)
"                       Проверить наличие регистра '+':
"                           if has('unnamedplus')
"   autoselect      - работает как флаг 'a' в опции 'guioptions'. При запуске
"                       visual mode или выделении в visual mode Vim пытается
"                       сохранить выделенный текст в регистр, который
"                       используется при выделении ('*')
"   autoselectplus  - как и autoselect, но с использованием регистра '+' вместо
"                       '*' регистра (флаг 'P' в опции 'guioptions')
"   autoselectml    - как и autoselect, но для немодального выбора
"                       (флаг 'A' в опции 'guioptions')
"   exclude:{ptrn}  - шаблон, который сопоставляется с именем терминала,
"                       указанным в опции 'term'. Если есть совпадение то
"                       соединение с X-сервером не будет установлено.
"                       Используется в чистой консоли Linux.
" Type: string
" Default: "autoselect,exclude:cons\|linux"
" set cb=autoselect,exclude:cons\\\|linux

" keymodel, km - список параметров через запятую, которые включают специальные
"                   возможности для некоторых клавиш
"   startsel    - использование <Shift+special_key> запускает select mode
"                   или visual mode, в зависимости от значения опции
"                   'selectmode'
"   stopsel     - использование special_key без <Shift> останаливает выделение
"                   текста
" special_key могут быть клавиши курсора, <End>, <Home>, <PageUp> и <PageDown>
" Type: string
" Default: ""
" set km=
