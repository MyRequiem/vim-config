vim9script

# Импортируется в ../user-settings/mappings.vim

# Формирует меню кодировок файлов для чтения и записи.
export def SetMenuEncoding(mode: string, cmd: string)
    # Указываем только те кодировки, которые реально могут пригодиться.
    var encodings = [
        'utf-8',
        'cp1251', # Windows Cyrillic
        'cp866',  # MS-DOS Cyrillic
        'koi8-r', # Legacy Unix Cyrillic
        'latin1'  # Западноевропейская (базовая для ASCII/текстов)
    ]

    for enc in encodings
        execute $"nnoremenu Encoding.{mode}.{enc} {cmd}{enc}<CR>"
    endfor
enddef
