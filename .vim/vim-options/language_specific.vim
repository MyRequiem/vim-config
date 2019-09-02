scriptencoding utf-8

" vint: -ProhibitAbbreviationOption

" isfname, isf - символы для определения имен файлов и путей. Используется
" такими командами как 'gf'
" specifies the characters in a file name
" Type: string
" Default: "@,48-57,/,.,-,_,+,,,#,$,%,~,="
" set isf=@,48-57,/,.,-,_,+,,,#,$,%,~,=

" isident, isi - символы для определения идентификаторов
" specifies the characters in an identifier
" Type: string
" Default: "@,48-57,_,192-255"
" set isi=@,48-57,_,192-255

" iskeyword, isk - символы для определения ключевых слов, а так же для команд
" 'w', 'b' и т.д.
"   48-57       - цифры
"   128-175     - часть кириллицы в DOS кодировке (866)
"   192-255     - остальные символы кириллицы в DOS кодировке и все символы
"                   кириллицы в Windows кодировке (Windows-1251)
" Type:
" Default: "@,48-57,_,192-255"
set iskeyword=@,a-z,A-Z,48-57,_,-,128-175,192-255

" isprint, isp - список видимых символов
" Type: string
" Default: "@,161-255"
" set isp=@,161-255

" quoteescape, qe - определяет escape-символы в строке
" Type: string
" Default: \
" set qe=\\

" keymap, kmp - имя раскладки клавиатуры
" Type: string
" Default: ""
" set kmp=

" langmap, lmap - символы для замены во время ввода в normal mode. Например,
" для Греции:
"   set langmap=ΨC,ΔD,ΞJ,...
"   при нажатии 'Ψ' символ будет распознан как 'C' и т.д.
" Type: string
" Default: ""
set lmap=йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,х[,ъ],фa,ыs,вd,аf,пg,рh,оj,лk,дl,ж\\;,э',яz,чx,сc,мv,иb,тn,ю.,ЙQ,ЦW,УE,КR,ЕT,НY,ГU,ШI,ЩO,ЗP,Х{,Ъ},ФA,ЫS,ВD,АF,ПG,РH,ОJ,ЛK,ДL,Ж:,Э',ЯZ,ЧX,СC,МV,ИB,ТN,Б<,Ю>

" langremap, lrm - применять замены, установленные опцией 'langmap' при маппинге
" Type: boolean
" Default: on
" set lrm

" iminsert, imi - указывает, следует ли использовать 'langmap' или Input Method
" (IM) в режиме вставки
"   0   - lmap выключен, IM выключен
"   1   - lmap включен, IM выключен
"   2   - lmap выключен, IM включен
" Type: number
" Default: 0
" set imi=0

" imstyle, imst - стиль и метода ввода
"   0   - использовать стиль on-the-spot style
"   1   - использовать стиль over-the-spot style
" Долгое время стиль 'on-the-spot style' использовался в версии GTK VIM, однако,
" известно, что это вызывает проблемы при использовании маппингов.
" Type: number
" Default: 1
set imst=1

" imsearch, ims - следует ли использовать 'langmap' или метод ввода (IM), при
" вводе шаблона поиска
"   -1  - используется значение 'iminsert'
"   0   - lmap выключен, IM выключен
"   1   - lmap включен, IM выключен
"   2   - lmap выключен, IM включен
" Type: number
" Default: -1
" set ims=-1
