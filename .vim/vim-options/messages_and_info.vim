scriptencoding utf-8

" vint: -ProhibitAbbreviationOption

" terse - не показывать информационное сообщения при достижении конца/начала
" буфера при поиске:
"   'search hit BOTTOM, continuing at TOP'
"   'search hit TOP, continuing at BOTTOM'
" Достигается путем добавления флага 's' к параметру 'shortmess'
" Type: boolean
" Default: off
" set noterse

" shortmess, shm - список флагов для формирования коротких информационных
" сообщений:
"   f   - '(3 of 5)' вместо '(file 3 of 5)'
"   i   - '[noeol]' вместо '[Incomplete last line]'
"   l   - '999L, 888C' вместо '999 lines, 888 characters'
"   n   - '[New]' вместо '[New File]'
"   r   - '[RO]' вместо '[readonly]'
"   x   - '[dos]' вместо '[dos format]', '[unix]' вместо '[unix format]' и
"           '[mac]' вместо '[mac format]'.
"   s   - не показывать сообщения 'search hit BOTTOM, continuing at TOP' и
"           'search hit TOP, continuing at BOTTOM' при поиске
"   t   - обрезать сообщение в начале, если оно слишком длинное:
"           'too long message' > '<ong message'
"   T   - обрезать сообщение в середине, если оно слишком длинное:
"           'too long message' > 'too ... message'
"   W   - не добавлять в сообщение 'written' при записи файла
"   A   - не выдавать сообщение 'ATTENTION' когда swap файл уже существует
"   I   - не показывать сообещние ':intro' при старте Vim без параметров
"   c   - не показывать сообщения при выборе в popup меню автодополнений:
"           '-- AAA completion (BBB)'
"           'match 1 of 2'
"           'The only match',
"           'Pattern not found'
"           'Back at original'
"           etc.
"   q   - 'recording' вместо 'recording @a'
"   F   - не показывать информацию о количестве строк и символов в файле
"           при его открытии и редактировании
"   S   - не показывать счетчик найденных совпадений в правом нижнем углу
"           '[2/5]' (если отсутствует, то включается флаг 's')
" Type: string
" Default: "filnxtToOS"
set shm=filnrxsIcF

" showcmd, sc - отображать вводимую команду в правой части командной строки
" Type: boolean
" Default: off
set sc

" showmode, smd - показывать текущий режим Vim в командной строке:
"   '-- INSERT --', '-- VISUAL --', '-- VISUAL LINE --', '-- VISUAL BLOCK --',
"   '-- SELECT --', '-- REPLACE --'
" Type: boolean
" Default: on
set nosmd

" ruler, ru - номер текущей строки и столбца в правой части командной строки
" (отображается только если строка статуса скрыта 'set laststatus=0|1')
" Type: boolean
" Default: off
" set noru

" rulerformat, ruf - формат для параметра 'ruler'. Аналогичен формату строки
" статуса 'statusline'. Ширина по умолчанию 17 символов, но можно увеличить.
" Type: string
" Default: ""
set rulerformat=%23(%06l:%02c/%06L[%03p%%]%)

" report - порог для сообщения количества измененных строк, которое будет
" выводиться для большинства ':' команд (0 - сообщать всегда)
" Type: number
" Default: 2
set report=0

" verbose, vbs - подробные сообщения о событиях в Vim (для отладки)
" >= 1  чтение или запись файла viminfo
" >= 2  когда читается файл командой :source
" >= 5  каждый найденный файл тегов и файлы include
" >= 8  файлы, для которых выполняется группа автокоманд
" >= 9  каждая выполненная автокоманда
" >= 12 каждая выполняемая функция
" >= 13 выбрасывается, перехватывается, завершается, отбрасывается исключение
" >= 14 все, что ожидает рассмотрения в инструкции finally
" >= 15 каждая исполняемая команда Ex (усекается до 200 символов)
" Type: number
" Default: 0
" set vbs=0

" verbosefile, vfile - файл для записи входящих сообещний (:mess)
" Type: string
" Default: ""
" set vfile=

" more - просмотрт длинных выводов команд с паузой и сообщением '-- More --'
" Type: boolean
" Default: on
" set more

" confirm, cf - использовать диалог, когда операция должна быть подтверждена.
" Например, выход без сохранения измененного файла:
"   Save changes to "some_file.ext"?
"   [Y]es, (N)o, (C)ancel:
" Type: boolean
" Default: off
set cf

" errorbells    ring the bell for error messages
" Type:
" Default:
" set noeb  eb

" visualbell    use a visual bell instead of beeping
" Type:
" Default:
" set novb  vb

" belloff, bo - не выдавать 'звонок' по указанным событиям
  " all           - все события
  " Backspace     - при нажатии <BS> или <Del> и ошибке удаления
"   cursor        - не перемещается с помощью клавиш курсора в insert mode
  " complete      - ошибка произошла при использовании <Ctrl-x><Ctrl-k> или
"                       <Ctrl-x><Ctrl-t>
" copy            - невозможно скопировать символ из insert mode, используя
"                       <Ctrl-y> или <Ctrl-e>
" ctrlg           - неизвестный символ после <C-g> в insert mode
" error           - произошла другая ошибка (например, попытка присоединения
"                       к последней строке)
" esc             - нажатие <Esc> в normal mode
" ex              - in visual mode нажав Q приводит к ошибке
" hangul          - произошла ошибка при использовании ввода на корейском языке
" insertmode      - нажатие <Esc> в  insert mode
" lang            - вызов звукового модуля для Lua/Mzscheme/Tcl
" mess            - нет доступных данных для 'g<'
" showmatch       - ошибка при выполнении функции 'showmatch'
" operator        - ошибка использования 'y', 'd', 'c', 'g~', 'gu', 'gU' в
"                       пустой области
" register        - неизвестный регистр после <C-r> в insert mode
" shell           - 'звонок' из оболочки при выводе ':!'
" spell           - ошибка проверки правописания
" wildmode        - найдено больше совпадений в автозавершении командной строки
"
" Type: string
" Default: ""
set bo=all

" helplang, hlg - список предпочитаемых языков для поиска справки
" Type: string
" Default: "en"
" set hlg=en
