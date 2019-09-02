scriptencoding utf-8

" vint: -ProhibitAbbreviationOption

" directory, dir - список директорий, где будет создаваться swap-файл
" (выбирается первая директория, в которой возможно создать файл)
" Type: string
" Default: ".,~/tmp,/var/tmp,/tmp"
set dir=$HOME/.vim/swap
if !isdirectory(&dir)
    call mkdir(&dir, 'p', 0755)
endif

" swapfile, swf - использовать swap-файл
" use a swap file for this buffer
" Type: boolean
" Default: on
" set swf

" swapsync, sws - метод синхронизирования swap-файлa с диском. Если опция
" пустая, swap-файл находится в памяти постоянно до закрытия редактируемого
" файла.
"   sync    - время от времени синхронизировать swap-файл (как определено в OS)
"   fsync   - синхронизировать после каждой записи в swap-файл
" Type: string
" Default: "fsync"
" set sws=fsync

" updatecount, uc - количество введенных символов, после которых swap-файл
" будет обновляться (0 - swap-файл не будет создан вообще)
" Type: number
" Default: 200
" set uc=200

" updatetime, ut - интервал синхронизации swap-файла с диском (ms), если в
" течении этого времени не прозводился ввод. Так же используется для события
" автокоманд 'CursorHold'
" Type: number
" Default: 4000
set ut=10000

" maxmem, mm - максимальный объем памяти в килобайтах, используемый для одного
" буфера (kB)
" Type: number
" Default: от 256 до 5120 или половина объема свободной памяти
"           (в зависимости от системы)
" set mm=894588

" maxmemtot, mmt - максимальный объем памяти в килобайтах, используемый для
" всех буферов (kB)
"2048 and 10240
" Type: number
" Default: от 2048 до 1024 или половина объема свободной памяти
"           (в зависимости от системы)
" set mmt=894588
