scriptencoding utf-8

" vint: -ProhibitAbbreviationOption

" modeline, ml - разрешить использование настроек modeline при чтении файла
" Например в конце файла:
"   vim:ts=4:tw=30:mls=1
" Type: boolean
" Default: on, но для root - off
" set ml

" modelineexpr, mle - разрешить параметры modeline, которые являются выражениями
" Type: boolean
" Default: off
" set nomle

" modelines, mls - максимально количество строк modeline в конце файла
" Например, при значении 1:
"   // vim:ft=conf  - НЕ будет использоваться
"   // vim:ts=2     - НЕ будет использоваться
"   // vim:tw=20    - будет использоваться
" при значении 2:
"   // vim:ft=conf  - НЕ будет использоваться
"   // vim:ts=2     - будет использоваться
"   // vim:tw=20    - будет использоваться
" и т.д.
" Type: number
" Default: 5
set mls=1

" binary, bin - редактирование бинарных файлов
" Type: boolean
" Default: off
" set nobin

" endofline, eol - проверка <EOL> в файле
" Type: boolean
" Default: on
" set eol

" fixendofline, fixeol - исправляет отсутсвующий end-of-line в конце файла
" Type: boolean
" Default: on
" set fixeol

" bomb - добавлять метку BOM (Byte Order Mark)
" Type: boolean
" Default: off
" set nobomb

" fileformat, ff - формат конца строки
"   dos     <CR> <NL>
"   unix    <NL>
"   mac     <CR>
" Type: string
" Default: "unix"
" set ff=unix

" fileformats, ffs - формат конца строки при начале редактирования нового
" файла в буфере
" Type: string
" Default: "unix,dos"
" set ffs=unix,dos

" textmode, tx - устарел, вместо него используется 'fileformat' (оставлен для
" совместимости со старыми версиями Vim)
" Type: boolean
" Default: off
" set notx

" textauto, ta - устарел, вместо него используется 'fileformats' (оставлен для
" совместимости со старыми версиями Vim)
" Type: boolean
" Default: on
" set ta

" write - запись файлов разрешена
" Type: boolean
" Default: on
" set write

" writebackup, wb - делать резервную копию файла перед записью. Копия удаляется
" после успешной записи файла, если параметр 'backup' не установлен
" Type: boolean
" Default: on
" set wb

" backup, bk - оставлять резервную копию файла после его успешной записи, если
" установлен параметр 'writebackup'
" keep a backup after overwriting a file
" Type: boolean
" Default: off
set bk

" backupskip, bsk - список шаблонов файлов, резервные копии которых создаваться
" не будут
" Type: string
" Default: "/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*"
set bsk=/tmp/*,/var/spool/cron/*

" backupcopy, bkc - делать резервную копию как копию или переименовывать
" существующий файл
"   yes     - сделать резервную копию файла и перезаписать оригинал
"   no      - сделать переименованную копию исходного файла
"   auto    - одно из предыдущих, что работает лучше всего
" Type: string
" Default: auto
set bkc=auto

" backupdir, bdir - список директорий для сохранения резервных копий файлов
" Type: string
" Default: ".,~/tmp,~/"
set bdir=$HOME/.vim/backup
" создаем, если не существует
if !isdirectory(&bdir)
    call mkdir(&bdir, 'p', 0755)
endif

" backupext, bex - расширение для файлов резервных копий
" Type: string
" Default: "~"
set bex=.back

" autowrite, aw - записывать файл, если он был изменен по командам ':next',
" ':rewind', ':last', ':first', ':previous', ':stop', ':suspend', ':tag', ':!',
" ':make', '<Ctrl-]>', '<Ctrl-^>', ':buffer', '<Ctrl-o>', '<Ctrl-i>',
" '{A-Z0-9}, `{A-Z0-9}
" Type: boolean
" Default: off
" set noaw

" autowriteall, awa - как 'autowrite' плюс команды ':edit', ':enew', ':quit',
"   ':qall', ':exit', ':xit', ':recover' и закрытие окна Vim
" Type: boolean
" Default: off
" set noawa

" writeany, wa - позволяет записывать в любой файл без необходимости
" подтверждения 'w!'
" Type: boolean
" Default: off
" set nowa

" autoread, ar - автоматически перечитывать файл, когда он был изменен вне Vim
" Type: boolean
" Default: off
set ar

" patchmode, pm - сохранить версию файла, которая была при его открытии c
" указанным постфиксом
"   set pm=_old
"   Например, открываем файл file_name и начинаем редактировать. Создается файл
"   file_name_old - исходная версия файла
" Type: string
" Default: ""

" fsync, fs - принудительно синхронизировать файл с жестким диском после записи
" Type: boolean
" Default: on
" set fs

" shortname, sn - предполагает, что имена файлов состоят из 8 символов плюс
" расширение из 3 символов (MS-DOS, messydos, crossdos)
" Type: boolean
" Default: off
" set nosn

" cryptmethod, cm - метод шифрования для записи файла
" (zip, blowfish или blowfish2)
" Type: string
" Default: "blowfish2"
" set cm=blowfish2
