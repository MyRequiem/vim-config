scriptencoding utf-8

" /usr/share/vim/vim81/syntax/netrw.vim

" обычный текст
highlight netrwPlain term=NONE cterm=NONE ctermfg=7 ctermbg=0 gui=NONE guisp=NONE guifg=#AAAAAA guibg=NONE
" пробел между '|' и именем файлв в режиме дерева
highlight netrwTreeBarSpace     NONE
highlight netrwQuickHelp        NONE

" директории
highlight! link netrwDir        Directory
" слеш после имени директории
highlight! link netrwClassify   Directory
" отмеченные файлы
highlight! link netrwMarkFile   WildMenu
" исполняемые файлы
highlight! link netrwExe        ModeMsg
" символы визуализации '|' в режиме дерева
highlight! link netrwTreeBar    DarkGrayOnBlack
" баннер
highlight! link netrwComment    Comment
" Hiding: в баннере
highlight! link netrwHide       Comment
" регулярка после Hiding: в баннере
highlight! link netrwHidePat    String
highlight! link netrwHideSep    Normal
" после Sorted by и Sort sequence:
highlight! link netrwList       String
highlight! link netrwComma      Normal
" клавиши после Quick Help:
highlight! link netrwHelpCmd    SpecialKey
" двоеточие после клавиш в Quick Help:
highlight! link netrwCmdSep     Normal
" подсказки в Quick Help:
highlight! link netrwQHTopic    ModeMsg
" описание клавиш в Quick Help:
highlight! link netrwCmdNote    Normal
" версия Netrw
highlight! link netrwVersion    Function
" ссылки
highlight! link netrwSymLink    LineNr
" --> после имени ссылки
highlight! link netrwLink       DarkGrayOnBlack

" ???
" highlight netrwSpecial      term=NONE cterm=NONE ctermfg=2    ctermbg=1    gui=NONE guisp=NONE guifg=#FFFFFF guibg=#000000
" highlight netrwSizeDate     term=NONE cterm=NONE ctermfg=2    ctermbg=1    gui=NONE guisp=NONE guifg=#FFFFFF guibg=#000000
" highlight netrwDateSep      term=NONE cterm=NONE ctermfg=2    ctermbg=1    gui=NONE guisp=NONE guifg=#FFFFFF guibg=#000000
" highlight netrwTime         term=NONE cterm=NONE ctermfg=2    ctermbg=1    gui=NONE guisp=NONE guifg=#FFFFFF guibg=#000000
" highlight netrwTimeSep      term=NONE cterm=NONE ctermfg=2    ctermbg=1    gui=NONE guisp=NONE guifg=#FFFFFF guibg=#000000
" highlight netrwSlash        term=NONE cterm=NONE ctermfg=2    ctermbg=1    gui=NONE guisp=NONE guifg=#FFFFFF guibg=#000000
" highlight netrwSortBy       term=NONE cterm=NONE ctermfg=2    ctermbg=1    gui=NONE guisp=NONE guifg=#FFFFFF guibg=#000000
" highlight netrwSortSeq      term=NONE cterm=NONE ctermfg=2    ctermbg=1    gui=NONE guisp=NONE guifg=#FFFFFF guibg=#000000
" highlight netrwCopyTgt      term=NONE cterm=NONE ctermfg=2    ctermbg=1    gui=NONE guisp=NONE guifg=#FFFFFF guibg=#000000

""" типы файлов
" бэкапы
syntax match netrwBak "\(\S\+ \)*\S\+\.\%(bak\|back\)\>" contains=netrwTreeBar,@NoSpell
" архивы
syntax match netrwCompress "\(\S\+ \)*\S\+\.\%(gz\|bz2\|Z\|z\|7z\|zip\|rar\|jar\|arj\|rpm\|deb\|lzma\|cab\|lha\|lzh\|zoo\|arc\|ark\|ace\|tar\|xz\|lz\|tlz\|tgz\|tbz2\)\>" contains=netrwTreeBar,@NoSpell
" txz пакеты
syntax match netrwCompressTxz "\(\S\+ \)*\S\+\.txz\>" contains=netrwTreeBar,@NoSpell
" data
syntax match netrwData "\(\S\+ \)*\S\+\.\%(dbf\|mdn\|db\|mdb\|dat\|fox\|dbx\|mdx\|sql\|mssql\|msql\|ssql\|pgsql\|cdx\|dbi\)\>" contains=netrwTreeBar,@NoSpell
" source
syntax match netrwSource "\(\S\+ \)*\S\+\.\%(js\|py\|c|cc\|cpp\|hh\|cxx\|bash\|sh\|SlackBuild\|csh\|zsh\|fish\|diff\|patch\|pl\|asm\|pm\|inc\|cgi\|php\|phps\|java\|jav\|jasm\|pas\|tcl\|tk\|tm\|awk\|m4\|st\|mak\|sl\|ada\|caml\|ml\|mli\|mly\|mll\|mlp\|sas\|prg\|hs\|erl\|vim\|vifm\|jsm\|el\|lisp\|md\|rst\)\>" contains=netrwTreeBar,@NoSpell
" docs
syntax match netrwDoc "\(\S\+ \)*\S\+\.\%(lst\|meta\|asc\|md5\|sha1\|sha256\|sha512\|txt\|TXT\|rtf\|diz\|ctl\|me\|ps\|xsd\|xslt\|dtd\|mail\|msg\|lsm\|po\|nroff\|man\|tex\|sgml\|text\|letter\|chm\|doc\|docx\|docm\|xls\|xlsx\|ppt\|pptx\|pptm\|odt\|odp\)\>" contains=netrwTreeBar,@NoSpell
" pdf, djvu
syntax match netrwDocPdfDjvu "\(\S\+ \)*\S\+\.\%(pdf\|djvu\)\>" contains=netrwTreeBar,@NoSpell
" images
syntax match netrwPix "\c\(\S\+ \)*\S*\.\%(jpg\|jpeg\|svg\|tif\|tiff\|gif\|png\|pcx\|bmp\|xpm\|xbm\|eps\|pic\|rle\|ico\|wmf\|omf\|ai\|cdr\|ora\|fits\=\|ppc\|pgm\|ppm\|psd\|rgb\|xcf\)\>" contains=netrwTreeBar,@NoSpell
" torrent
syntax match netrwTorrent "\(\S\+ \)*\S\+\.torrent\>" contains=netrwTreeBar,@NoSpell
" html
syntax match netrwHtml "\(\S\+ \)*\S\+\.\%(html\|shtml\)\>" contains=netrwTreeBar,@NoSpell
" css, xml
syntax match netrwCssXml "\(\S\+ \)*\S\+\.\%(css\|xml\)\>" contains=netrwTreeBar,@NoSpell
" iso, img
syntax match netrwIsoImg "\(\S\+ \)*\S\+\.\%(iso\|img\)\>" contains=netrwTreeBar,@NoSpell
" media
syntax match netrwMedia "\(\S\+ \)*\S\+\.\%(mp2\|mp3\|mpg\|ogg\|ogv\|mpeg\|wav\|avi\|asf\|mov\|mol\|mpl\|xm\|mod\|it\|med\|mid\|midi\|s3m\|umx\|vob\|mkv\|flv\|mp4\|m3u\|flac\|ape\|wma\|wmv\|3gp\|webm\)\>" contains=netrwTreeBar,@NoSpell
" ini, conf
syntax match netrwConfigs "\(\S\+ \)*\S\+\.\%(ini\|conf\)\>" contains=netrwTreeBar,@NoSpell

" спицификации
highlight! link netrwSpecFile       netrwPlain
highlight! link netrwBak            DarkGrayOnBlack
highlight! link netrwTmp            DarkGrayOnBlack
highlight! link netrwCompress       Function
highlight! link netrwCompressTxz    LineNr
highlight! link netrwSource         SignColumn
" lex
highlight! link netrwLex            netrwSource
" Yacc
highlight! link netrwYacc           netrwSource
" headers
highlight! link netrwHdr            netrwSource
highlight! link netrwDoc            Normal
highlight! link netrwDocPdfDjvu     Constant
" libs: a, so, lib, dll
highlight! link netrwLib            netrwPlain
" makefiles
highlight! link netrwMakefile       Normal
highlight! link netrwMakeFile       Normal
" obj
highlight! link netrwObj            netrwPlain
highlight! link netrwPix            LineNr
" tags, ANmenu, ANtags
highlight! link netrwTags           netrwPlain
highlight! link netrwTilde          netrwPlain
highlight! link netrwTorrent        MoreMsg
highlight! link netrwHtml           String
highlight! link netrwMedia          MoreMsg

if g:term_256_color
    highlight netrwData term=NONE cterm=NONE ctermfg=160 ctermbg=NONE gui=NONE guisp=NONE guifg=#D70000 guibg=NONE
    " core.xxx (coredump)
    highlight! link netrwCoreDump   netrwData
    highlight netrwCssXml  term=NONE cterm=NONE ctermfg=167 ctermbg=NONE gui=NONE guisp=NONE guifg=#D75F5F guibg=NONE
    highlight netrwIsoImg  term=NONE cterm=NONE ctermfg=38  ctermbg=NONE gui=NONE guisp=NONE guifg=#00AFD7 guibg=NONE
    highlight netrwConfigs term=NONE cterm=NONE ctermfg=212 ctermbg=NONE gui=NONE guisp=NONE guifg=#FF87D7 guibg=NONE
else
    highlight! link netrwData       Number
    highlight! link netrwCoreDump   Number
    highlight netrwCssXml  term=NONE cterm=NONE ctermfg=5 ctermbg=NONE gui=NONE guisp=NONE guifg=NONE guibg=NONE
    highlight! link netrwIsoImg     netrwSource
    highlight! link netrwConfigs    String
endif
