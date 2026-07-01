vim9script

# Настройки параметров для режима diff:
# diffopt, dip
# Type: string
# Default: "internal,filler"
#
# internal
#    Использовать внутреннюю библиотеку diff.
# filler
#    Дорисовывать пустые строки в том файле, где текста меньше, чтобы оба
#    файла шли синхронно, строчка в строчку.
# vertical
#    файлы в окнах с вертикальным разделением.
# context:{n}
#    Использовать контекст из {n} строк между изменениями (default: 6).
set dip=internal,filler,vertical,context:2
