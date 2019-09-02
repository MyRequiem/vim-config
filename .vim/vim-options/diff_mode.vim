scriptencoding utf-8

" vint: -ProhibitAbbreviationOption

" diff - присоединиться к текущему окну в группе окон и показать различия
" между файлами (см. :help vimdiff)
" Type: boolean
" Default: off
" set nodiff

" diffopt, dip - настройки параметров для режима diff
"   filler      - показывать удаленные строки, чтобы сохранить текст
"                   синхронизированным с другим окном
" context:{n}   - использовать контекст из {n} строк между изменениями и
"                   складками, которые содержат неизмененные линии. По
"                   умолчанию 6.
" iblank        - игнорировать изменения для пустых строк
" icase         - не учитывать регистр изменений ('a' и 'A' будут одинаковы)
" iwhite        - игнорировать изменения количества пробелов/табуляций
" iwhiteall     - игнорировать все изменения пробелов
" iwhiteeol     - игнорировать изменения пробелов в конце строки
" horizontal    - запуск режима сравнения с горизонтальным разделением
" vertical      - запуск режима сравнения с вертикальным разделением
" hiddenoff     - не используйте режим diff для скрытого буфера
" foldcolumn:{n}- ширина столбца с левой стороны окна, где отображаются метки
" internal      - использовать внутреннюю библиотеку diff
" indent-heuristic - эвристический отступ для внутренней библиотеки diff
" algorithm:{текст} - использовать указанный алгоритм сравнения для встроенного
"                       diff движка (myers, minimal, patience, histogram)
" Type: string
" Default: "internal,filler"
" set dip=internal,filler
set dip=filler,context:3,vertical,foldcolumn:4,internal

" diffexpr, dex - выражение, используемое для получения файла diff
" Type: string
" Default: ""
" set dex=

" patchexpr, pex - выражение, используемое для применения патча
" Type: string
" Default: ""
" set pex=
