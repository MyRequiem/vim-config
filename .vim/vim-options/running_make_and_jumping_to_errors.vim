scriptencoding utf-8

" vint: -ProhibitAbbreviationOption

" errorfile, ef - имя файла с сообщениями об ошибках для окна QuickFix
" Type: string
" Default: "errors.err"
" set ef=errors.err

" errorformat, efm - подобное описание формата строк в файле ошибок
" (см. ':h errorformat')
" Type: string
" Default: см. ':set efm?'
" set efm=%*[^\"]\"%f\"%*\\D%l:\ %m,\"%f\"%*\\D%l:\ %m,%-G%f:%l:\ (Each\ undeclared\ identifier\ is\ reported\ only\ once,%-G%f:%l:\ for\ each\ function\ it\ appears\ in.),%-GIn\ file\ included\ from\ %f:%l:%c:,%-GIn\ file\ included\ from\ %f:%l:%c\\,,%-GIn\ file\ included\ from\ %f:%l:%c,%-GIn\ file\ included\ from\ %f:%l,%-G%*[\ ]from\ %f:%l:%c,%-G%*[\ ]from\ %f:%l:,%-G%*[\ ]from\ %f:%l\\,,%-G%*[\ ]from\ %f:%l,%f:%l:%c:%m,%f(%l):%m,%f:%l:%m,\"%f\"\\,\ line\ %l%*\\D%c%*[^\ ]\ %m,%D%*\\a[%*\\d]:\ Entering\ directory\ %*[`']%f',%X%*\\a[%*\\d]:\ Leaving\ directory\ %*[`']%f',%D%*\\a:\ Entering\ directory\ %*[`']%f',%X%*\\a:\ Leaving\ directory\ %*[`']%f',%DMaking\ %*\\a\ in\ %f,%f\|%l\|\ %m

" makeprg, mp - программа, используемая для команды ':make'
"   set makeprg=make\ -j2
"   set makeprg=cmake\ ..\ &&\ make\ -j2
" Type: string
" Default: 'make'
" set mp=

" shellpipe, sp - строка для определения ввода-вывода команды ':make' в
" файл ошибок. Если параметр пустой, то в файл ошибок ничего не будет
" записано.
" Type: string
" Default: "2>&1| tee"
" set sp=2>&1\|\ tee

" makeef, mef - имя файла с сообщениями об ошибках для команды ':make'. Если
" оция пустая, то генерируется временный файл. ## - заменяется числом, чтобы
" сделать имя уникальным (гарантирует, что команда :make не перезаписывает
" существующий файл)
" Type: string
" Default: ""
" set mef=

" grepprg, gp - программа используемая для команды ':grep'
" Type: string
" Default: "grep -n $* /dev/null"
set gp=grep\ --line-number\ --binary-files=without-match\ $*

" grepformat, gfm - список формат для вывода команды ':grep'
" (см. ':h errorformat')
" Type: string
" Default: "%f:%l:%m,%f:%l%m,%f  %l%m"
" set gfm=%f:%l:%m,%f:%l%m,%f\ \ %l%m

" makeencoding, menc - кодировка для вывода команд ':make', ':grep' и т.д.
" Type: string
" Default: ""
" set menc=
