vim9script

# Сбрасывает стандартные стили Netrw, группирует файлы по категориям (архивы,
# исходный код, документы, медиа, конфиги) с помощью регулярных выражений и
# жестко привязывает их к цветовым группам редактора.

# Очистка старых стилей.
highlight netrwPlain ctermfg=7 ctermbg=0 guifg=#AAAAAA guibg=NONE
highlight netrwTreeBarSpace NONE
highlight netrwQuickHelp NONE

# Принудительная привязка.
highlight link netrwDir Directory
highlight link netrwClassify Directory
highlight link netrwMarkFile WildMenu
highlight link netrwExe ModeMsg
highlight link netrwTreeBar Ignore
highlight link netrwComment Comment
highlight link netrwHide Comment
highlight link netrwHidePat String
highlight link netrwHideSep Normal
highlight link netrwList String
highlight link netrwComma Normal
highlight link netrwHelpCmd SpecialKey
highlight link netrwCmdSep Normal
highlight link netrwQHTopic ModeMsg
highlight link netrwCmdNote Normal
highlight link netrwVersion Function
highlight link netrwSymLink LineNr
highlight link netrwLink Ignore

syntax match netrwBak "\(\S\+ \)*\S\+\.\%(bak\|back\)\>" contains=netrwTreeBar,@NoSpell
syntax match netrwCompress "\(\S\+ \)*\S\+\.\%(gz\|bz2\|Z\|z\|7z\|zip\|rar\|jar\|arj\|rpm\|deb\|lzma\|cab\|lha\|lzh\|zoo\|arc\|ark\|ace\|tar\|xz\|lz\|tlz\|tgz\|tbz2\)\>" contains=netrwTreeBar,@NoSpell
syntax match netrwCompressTxz "\(\S\+ \)*\S\+\.txz\>" contains=netrwTreeBar,@NoSpell
syntax match netrwData "\(\S\+ \)*\S\+\.\%(dbf\|mdn\|db\|mdb\|dat\|fox\|dbx\|mdx\|sql\|mssql\|msql\|ssql\|pgsql\|cdx\|dbi\)\>" contains=netrwTreeBar,@NoSpell
syntax match netrwSource "\(\S\+ \)*\S\+\.\%(js\|py\|c\|cc\|cpp\|hh\|cxx\|bash\|sh\|SlackBuild\|csh\|zsh\|fish\|diff\|patch\|pl\|asm\|pm\|inc\|cgi\|php\|phps\|java\|jav\|jasm\|pas\|tcl\|tk\|tm\|awk\|m4\|st\|mak\|sl\|ada\|caml\|ml\|mli\|mly\|mll\|mlp\|sas\|prg\|hs\|erl\|vim\|vifm\|jsm\|el\|lisp\|md\|rst\)\>" contains=netrwTreeBar,@NoSpell
syntax match netrwDoc "\(\S\+ \)*\S\+\.\%(lst\|meta\|asc\|md5\|sha1\|sha256\|sha512\|txt\|TXT\|rtf\|diz\|ctl\|me\|ps\|xsd\|xslt\|dtd\|mail\|msg\|lsm\|po\|nroff\|man\|tex\|sgml\|text\|letter\|chm\|doc\|docx\|docm\|xls\|xlsx\|ppt\|pptx\|pptm\|odt\|odp\)\>" contains=netrwTreeBar,@NoSpell
syntax match netrwDocPdfDjvu "\(\S\+ \)*\S\+\.\%(pdf\|djvu\)\>" contains=netrwTreeBar,@NoSpell
syntax match netrwPix "\c\(\S\+ \)*\S*\.\%(jpg\|jpeg\|svg\|tif\|tiff\|gif\|png\|pcx\|bmp\|xpm\|xbm\|eps\|pic\|rle\|ico\|wmf\|omf\|ai\|cdr\|ora\|fits\=\|ppc\|pgm\|ppm\|psd\|rgb\|xcf\)\>" contains=netrwTreeBar,@NoSpell
syntax match netrwTorrent "\(\S\+ \)*\S\+\.torrent\>" contains=netrwTreeBar,@NoSpell
syntax match netrwHtml "\(\S\+ \)*\S\+\.\%(html\|shtml\)\>" contains=netrwTreeBar,@NoSpell
syntax match netrwCssXml "\(\S\+ \)*\S\+\.\%(css\|xml\)\>" contains=netrwTreeBar,@NoSpell
syntax match netrwIsoImg "\(\S\+ \)*\S\+\.\%(iso\|img\)\>" contains=netrwTreeBar,@NoSpell
syntax match netrwMedia "\(\S\+ \)*\S\+\.\%(mp2\|mp3\|mpg\|ogg\|ogv\|mpeg\|wav\|avi\|asf\|mov\|mol\|mpl\|xm\|mod\|it\|med\|mid\|midi\|s3m\|umx\|vob\|mkv\|flv\|mp4\|m3u\|flac\|ape\|wma\|wmv\|3gp\|webm\)\>" contains=netrwTreeBar,@NoSpell
syntax match netrwConfigs "\(\S\+ \)*\S\+\.\%(ini\|conf\)\>" contains=netrwTreeBar,@NoSpell

# Привязка типов файлов к группам цветов.
highlight link netrwSpecFile netrwPlain
highlight link netrwBak Ignore
highlight link netrwTmp Ignore
highlight link netrwCompress Function
highlight link netrwCompressTxz LineNr
highlight link netrwSource SignColumn
highlight link netrwLex netrwSource
highlight link netrwYacc netrwSource
highlight link netrwHdr netrwSource
highlight link netrwDoc Normal
highlight link netrwDocPdfDjvu Constant
highlight link netrwLib netrwPlain
highlight link netrwMakefile Normal
highlight link netrwMakeFile Normal
highlight link netrwObj netrwPlain
highlight link netrwPix LineNr
highlight link netrwTags netrwPlain
highlight link netrwTilde netrwPlain
highlight link netrwTorrent MoreMsg
highlight link netrwHtml String
highlight link netrwMedia MoreMsg

if g:term_256_color
    highlight netrwData ctermfg=160 ctermbg=0 guifg=#D70000 guibg=NONE
    highlight link netrwCoreDump netrwData
    highlight netrwCssXml  ctermfg=167 ctermbg=0 guifg=#D75F5F guibg=NONE
    highlight netrwIsoImg  ctermfg=38  ctermbg=0 guifg=#00AFD7 guibg=NONE
    highlight netrwConfigs ctermfg=212 ctermbg=0 guifg=#FF87D7 guibg=NONE
else
    highlight link netrwData Number
    highlight link netrwCoreDump Number
    highlight netrwCssXml ctermfg=5 ctermbg=0 guifg=NONE guibg=NONE
    highlight link netrwIsoImg netrwSource
    highlight link netrwConfigs String
endif

# vim:nowrap
