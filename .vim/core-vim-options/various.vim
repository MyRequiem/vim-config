vim9script

###
# Различные системные настройки поведения редактора. # Управляет сохранением
# сессий, историей кэша (viminfo), вьюхами окон и боковыми панелями.
# Name: various
#
# :options
# 26 various
###

# Автоматически менять текущий рабочий каталог Vim на директорию, в которой
# лежит открытый файл.
# Name: autochdir (acd)
# Type: boolean
# Default: false
&autochdir = true

# Список элементов, которые Vim сохраняет в файл сессии при выполнении команды
# ':mksession'. Позволяет восстановить открытые буферы, вкладки, фолдинг и
# структуру окон при перезапуске.
# Name: sessionoptions (ssop)
# Type: string
# Default: "blank,buffers,curdir,folds,help,options,tabpages,winsize,terminal"
&sessionoptions = 'buffers,'
               .. 'curdir,'
               .. 'folds,'
               .. 'help,'
               .. 'options,'
               .. 'tabpages,'
               .. 'terminal,'
               .. 'unix'

# Что именно Vim сохраняет для конкретного окна при выполнении команды
# ':mkview'. Позволяет запомнить положение курсора, состояние свернутых блоков
# (folds) и т.д. для текущего файла.
# Name: viewoptions (vop)
# Type: string
# Default: "folds,options,cursor,curdir"
&viewoptions = 'cursor,'
            .. 'folds,'
            .. 'unix,'
            .. 'curdir'

# Автоматическое создание и привязка изолированной директории под файлы
# состояния окон (:mkview). Складывает кэш вьюх в одно место (~/.vim/view/),
# не засоряя текущую директорию.
# Name: viewdir (vdir)
# Type: string
# Default: "$HOME/.vim/view" или "$XDG_CONFIG_HOME/vim/view"
&viewdir = $HOME .. '/.vim/view'
if !isdirectory(&vdir)
    mkdir(&vdir, 'p', 0o755)
endif

# Настройка кэширования истории команд, поиска и содержимого регистров в файл
# ~/.viminfo. Позволяет Vim помнить макросы и скопированный текст даже после
# перезагрузки системы.
#
# '50       - помнить историю последних 50 файлов.
# <1000000  - сохранять до 1 000 000 строк текста в каждом регистре (не
#               обрезать тяжелый код).
# s51200    - лимит размера буфера для одного регистра повышен до 51 КБ.
# h         - при старте Vim не подсвечивать старый поиск (отключает hlsearch
#               до нового ввода).
# Name: viminfo (vi)
# Type: string
# Default: "'100,<50,s10,h"
&viminfo = "'50,<1000000,s51200,h"

# Всегда отображать левую узкую колонку для знаков (меток linter,
# git-изменений, отладчика). Фиксация 'yes' предотвращает «прыжки» и дерганье
# текста кода влево-вправо при анализе кода.
# Name: signcolumn (scl)
# Type: string
# Default: "auto"
&signcolumn = 'yes'
