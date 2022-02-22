scriptencoding utf-8

" Required: instant-markdown-d
" Notes: для некоторых параметров (например для окрытия просмотра не в браузере
" по умолчанию, а в указанном браузере) требуется версия >= 0.2.0. На 25.09.19
" это pre-release версия, поэтому собираем так:
"    (https://github.com/MyRequiem/SlackBuilds/tree/master/npm2txz)
"       $ ./npm2txz.sh instant-markdown-d@next

" не запускать автоматически предварительный просмотр в браузере
" (http://localhost:8090/) при открытии *.md файлов
" Для запуска/остановки просмотра используем:
"    :InstantMarkdownPreview
"    :InstantMarkdownStop
let g:instant_markdown_autostart              = 0

" браузер
let g:instant_markdown_browser                = 'google-chrome-stable'
" порт на localhost
let g:instant_markdown_port                   = 8090
" лог сервера
let g:instant_markdown_logfile                = '/dev/null'
" обновлять документ в браузере в реальном времени
let g:instant_markdown_slow                   = 0
" только для localhost
let g:instant_markdown_open_to_the_world      = 0
" скрипты заблокированы
let g:instant_markdown_allow_unsafe_content   = 0
" разрешать внешние ресурсы: изображения, таблицы стилей, фреймы и т.д.
let g:instant_markdown_allow_external_content = 1
" не рендерить код TeX, встроенный в Markdown
let g:instant_markdown_mathjax                = 0
" автопрокрутка на место редактирования отключена
let g:instant_markdown_autoscroll             = 0
" для Python mini-server 'smdv' вместо instant-markdown-d
let g:instant_markdown_python                 = 0
