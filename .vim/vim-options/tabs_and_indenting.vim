scriptencoding utf-8

" vint: -ProhibitAbbreviationOption

" tabstop, ts - количество пробелов, которыми символ табуляции отображается в
" тексте. Оказывает влияние как на уже существующие табуляции, так и на новые.
" Type: number
" Default: 8
set ts=4

" shiftwidth, sw - количество пробелов в отступе
" Type: number
" Default: 8
set sw=4

" vartabstop, vts - список количества пробелов для каждой табуляции, следующие
" друг за другом. Например первая табуляция - 4, вторая - 20, третья - 10 и
" все остальные - 8:
"   set vartabstop=4,16,8
" Type: string
" Default: ""
" set vts=

" varsofttabstop, vsts - список количества пробелов для каждой табуляции и
" <Backcpace>, следующие друг за другом. Например первая табуляция - 4,
" вторая - 20, третья - 10 и все остальные - 8:
"   set vartabstop=4,20,10,8
" Type: string
" Default: ""
" set vsts=

" smarttab, sta - нажатие Tab в начале строки (если быть точнее, до первого
" непробельного символа в строке) приведет к добавлению отступа, ширина которого
" соответствует 'shiftwidth'
" Type: boolean
" Default: off
set sta

" softtabstop, sts - количество пробелов, которыми символ табуляции отображается
" при добавлении. Несмотря на то, что при нажатии <Tab> мы получаем ожидаемый
" результат (добавляется новый символ табуляции), фактически в отступе могут
" использоваться как табуляция так и пробелы. Например, при установленных
" tabstop=8  softtabstop=4, троекратное нажатие <Tab> приведет к добавлению
" отступа шириной 12 пробелов, однако сформирован он будет из одного символа
" табуляции и 4 пробелов.
" Type: number
" Default: 0
set sts=4

" shiftround, sr - количество пробелов отступа для команд '>' и '<'
" Type: boolean
" Default: off
set sr

" expandtab, et - в режиме вставки заменяет символ табуляции на соответствующее
" количество пробелов. Так же влияет на отступы командам '>>' и '<<'
" (для добавления реального символа табуляции: <Ctrl+v>,<Tab>)
" Type: boolean
" Default: off
set et

" autoindent, ai - копирует отступы текущей строки при добавлении новой
" Type: boolean
" Default: off
" set noai

" smartindent, si - делает то же, что и autoindent плюс автоматически выставляет
" отступы в 'нужных' местах. В частности, отступ ставится после строки, которая
" заканчивается символом '{', перед строкой, которая заканчивается символом '}',
" удаляется перед символом #, если он следует первым в строке и т.д.
" Type: boolean
" Default: off
" set nosi

" cindent, cin - включает автоматический отступ программ на C
" Type: boolean
" Default: off
" set nocin

" cinoptions, cino - влияет на то, как 'cindent' переопределяет строки в C коде
" (см. :help cinoptions-values)
" Type: string
" Default: ""
" set cino=

" cinkeys, cink - список ключей, которые при вводе в insert mode вызывают
" повторное выделение текущей строки. Используется, только если 'cindent'
" включен, а 'indentexpr' пустой
" Type: string
" Default: "0{,0},0),0],:,0#,!^F,o,O,e"
" set cink=0{,0},0),0],:,0#,!^F,o,O,e

" cinwords, cinw - список слов, которые вызывают C-отступы на следующей строке
" если 'smartindent' или 'cindent' установлены.
" Type: string
" Default: "if,else,while,do,for,switch"
" set cinw=if,else,while,do,for,switch

" indentexpr, inde - выражение, используемое для получения правильного отступа
" Type: string
" Default: ""
" set inde=

" indentkeys, indk - ключи, которые запускают отступ с 'indentexpr'
" Type: string
" Default: "0{,0},0),0],:,0#,!^F,o,O,e"
" set indk=0{,0},0),0],:,0#,!^F,o,O,e

" copyindent, ci - скопировать пробелы для отступа из предыдущей строки
" Type: boolean
" Default: off
" set noci

" preserveindent, pi - сохранить пробелы при изменении отступа
" Type: boolean
" Default: off
" set nopi

" lisp - отступы в стандарте lisp
" Type: boolean
" Default: off
" set nolisp

" lispwords, lw - разделенный запятыми список слов, которые влияют на отступ в
" стиле lisp
" Type: string
" Default: "defun,define,defmacro,set!,lambda,if,case,let,flet,let*,letrec,do,do*,define-syntax,let-syntax,letrec-syntax,destructuring-bind,defpackage,defparameter,defstruct,deftype,defvar,do-all-symbols,do-external-symbols,do-symbols,dolist,dotimes,ecase,etypecase,eval-when,labels,macrolet,multiple-value-bind,multiple-value-call,multiple-value-prog1,multiple-value-setq,prog1,progv,typecase,unless,unwind-protect,when,with-input-from-string,with-open-file,with-open-stream,with-output-to-string,with-package-iterator,define-condition,handler-bind,handler-case,restart-bind,restart-case,with-simple-restart,store-value,use-value,muffle-warning,abort,continue,with-slots,with-slots*,with-accessors,with-accessors*,defclass,defmethod,print-unreadable-object"
" set lw=defun,define,defmacro,set!,lambda,if,case,let,flet,let*,letrec,do,do*,define-syntax,let-syntax,letrec-syntax,destructuring-bind,defpackage,defparameter,defstruct,deftype,defvar,do-all-symbols,do-external-symbols,do-symbols,dolist,dotimes,ecase,etypecase,eval-when,labels,macrolet,multiple-value-bind,multiple-value-call,multiple-value-prog1,multiple-value-setq,prog1,progv,typecase,unless,unwind-protect,when,with-input-from-string,with-open-file,with-open-stream,with-output-to-string,with-package-iterator,define-condition,handler-bind,handler-case,restart-bind,restart-case,with-simple-restart,store-value,use-value,muffle-warning,abort,continue,with-slots,with-slots*,with-accessors,with-accessors*,defclass,defmethod,print-unreadable-object
