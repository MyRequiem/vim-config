scriptencoding utf-8

" формирует меню кодировок файлов для чтения и записи (SetMenuEncoding) {{{1
"
" latin1          8-bit символы (ISO 8859-1, используется для cp1252) {{{2
" iso-8859-2      вариант ISO_8859
" iso-8859-3      вариант ISO_8859
" iso-8859-4      вариант ISO_8859
" iso-8859-5      вариант ISO_8859
" iso-8859-6      вариант ISO_8859
" iso-8859-7      вариант ISO_8859
" iso-8859-8      вариант ISO_8859
" iso-8859-9      вариант ISO_8859
" iso-8859-10     вариант ISO_8859
" iso-8859-11     вариант ISO_8859
" iso-8859-12     вариант ISO_8859
" iso-8859-13     вариант ISO_8859
" iso-8859-14     вариант ISO_8859
" iso-8859-15     вариант ISO_8859
" koi8-r          Русская
" koi8-u          Украинская
" macroman        кодировка Macintosh
" cp437           аналогична iso-8859-1
" cp737           аналогична iso-8859-7
" cp775           Балтийская
" cp850           аналогична iso-8859-4
" cp852           аналогична iso-8859-1
" cp855           аналогична iso-8859-2
" cp857           аналогична iso-8859-5
" cp860           аналогична iso-8859-9
" cp861           аналогична iso-8859-1
" cp862           аналогична iso-8859-1
" cp863           аналогична iso-8859-8
" cp865           аналогична iso-8859-1
" cp866           аналогична iso-8859-5
" cp869           аналогична iso-8859-7
" cp874           Тайская
" cp1250          Чехия, Польша и др.
" cp1251          Кириллица
" cp1253          Греческая
" cp1254          Турецкая
" cp1255          Иврит
" cp1256          Арабская
" cp1257          Балтийская
" cp1258          Вьетнамская
" cp932           Японская (только Windows)
" euc-jp          Японская (только Unix)
" sjis            Японская (только Unix)
" cp949           Корейская (Unix и Windows)
" euc-kr          Корейская (только Unix)
" cp936           упрощенная китайская (только Windows)
" euc-cn          упрощенная китайская  (только Unix)
" cp950           Китайская (в Unix псевдоним для big5)
" big5            Китайская (в Windows псевдоним для cp950)
" euc-tw          Китайская (только Unix)
" utf-8           32 bit UTF-8 Unicode (ISO/IEC 10646-1)
" ucs-2           16 bit UCS-2  Unicode (ISO/IEC 10646-1)
" ucs-2le         как ucs-2, little endian
" ucs-4           32 bit UCS-4 Unicode (ISO/IEC 10646-1)
" ucs-4le         как ucs-4, little endian
" utf-16          расширенная ucs-2 double-words для большего количества символов
" utf-16le        как utf-16, little endian 2}}}

function! encodings#SetMenuEncoding(mode, cmd)
    let l:encodings = ['latin1', 'iso-8859-2', 'iso-8859-3', 'iso-8859-4',
        \ 'iso-8859-5', 'iso-8859-6', 'iso-8859-7', 'iso-8859-8', 'iso-8859-9',
        \ 'iso-8859-10', 'iso-8859-11', 'iso-8859-12', 'iso-8859-13',
        \ 'iso-8859-14', 'iso-8859-15', 'koi8-r', 'koi8-u', 'macroman', 'cp437',
        \ 'cp737', 'cp775', 'cp850', 'cp852', 'cp855', 'cp857', 'cp860',
        \ 'cp861', 'cp862', 'cp863', 'cp865', 'cp866', 'cp869', 'cp874',
        \ 'cp1250', 'cp1251', 'cp1253', 'cp1254', 'cp1255', 'cp1256', 'cp1257',
        \ 'cp1258', 'cp932', 'euc-jp', 'sjis', 'cp949', 'euc-kr', 'cp936',
        \ 'euc-cn', 'cp950', 'big5', 'euc-tw', 'utf-8', 'ucs-2', 'ucs-2le',
        \ 'ucs-4', 'ucs-4le', 'utf-16', 'utf-16le']

    for size in ['', '8bit-', '2byte-']
        for encoding in l:encodings
            let l:enc = size . encoding
            execute 'nnoremenu Encoding.' . a:mode . '.' . l:enc . ' ' .
                \ a:cmd . l:enc . "\<cr>"
        endfor
    endfor
endfunction " 1}}}
