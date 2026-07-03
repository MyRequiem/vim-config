vim9script

###
# Настройки чтения, записи и автоматической конфигурации файлов. Определяет
# поведение редактора при открытии буферов и парсинг встроенных инструкций.
# Name: reading-and-writing-files
#
# :options
# 19 reading and writing files
###

# Разрешить Vim считывать настройки форматирования прямо из текста самого
# файла с помощью modelene (# vim:ft=conf:nowrap). Позволяет задавать
# параметры индивидуально для каждого документа.
# Name: modeline (ml)
# Type: boolean
# Default: true (для обычных пользователей) / false (для root)
#
# Принудительно разрешить использование моделайнов даже для пользователя root.
&modeline = true

# Количество строк в начале и конце файла, которые Vim сканирует на наличие
# моделайнов. Например, значение '2' заставит Vim проверять строго только
# первые и последние 2 строки. Это ускоряет открытие тяжелых файлов и защищает
# от скрытого вредоносного кода в теле документа.
# Name: modelines (mls)
# Type: number
# Default: 5
&modelines = 2

# Создавать постоянную резервную копию файла (backup) после его успешного
# сохранения, если установлен параметр 'writebackup' (Default on).
# Name: backup (bk)
# Type: boolean
# Default: false
&backup = true

# Список шаблонов путей, для файлов из которых бэкапы создаваться НЕ будут.
# Исключает создание лишнего мусора при редактировании временных системных
# файлов и задач Cron.
# Name: backupskip (bsk)
# Type: string
# Default: "/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*"
&backupskip = '/tmp/*,/var/spool/cron/*,/run/cron/*'

# Автоматическое создание и привязка изолированной директории под файлы
# бэкапов. Складывает все файлы резервных копий в одно место (~/.vim/backup/),
# не засоряя директории с кодом.
# Name: backupdir (bdir)
# Type: string
# Default: ".,~/tmp,~/"
var backupdir_base_dir = $HOME .. '/.vim/backup'
if !isdirectory(backupdir_base_dir)
    mkdir(backupdir_base_dir, 'p', 0o755)
endif
&backupdir = backupdir_base_dir

# Расширение, которое добавляется к имени файлов резервных копий. Например,
# для файла 'script.py' бэкап будет называться 'script.py.back'.
# Name: backupext (bex)
# Type: string
# Default: "~"
&backupext = '.back'

# Автоматически перечитывать файл на экране, если он был изменен вне Vim
# (например, через git). Избавляет от всплывающих окон с предупреждениями и
# ручного ввода команды ':e!'.
# Name: autoread (ar)
# Type: boolean
# Default: false
&autoread = true
