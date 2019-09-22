" <F12> - open/close tagbar
nnoremap <silent><F12> :TagbarToggle<CR>

let g:tagbar_left             = 0
let g:tagbar_vertical         = 0
let g:tagbar_width            = 70
let g:tagbar_zoomwidth        = 0
let g:tagbar_autoclose        = 0
let g:tagbar_autofocus        = 1
let g:tagbar_sort             = 0
let g:tagbar_case_insensitive = 0
let g:tagbar_compact          = 1
let g:tagbar_indent           = 2
let g:tagbar_show_visibility  = 1
let g:tagbar_show_linenumbers = 0
let g:tagbar_hide_nonpublic   = 0
let g:tagbar_expand           = 0
let g:tagbar_singleclick      = 1
let g:tagbar_foldlevel        = 3
let g:tagbar_iconchars        = ['▸', '▾']
let g:tagbar_autoshowtag      = 0
let g:tagbar_previewwin_pos   = "rightbelow"
let g:tagbar_autopreview      = 0
let g:tagbar_systemenc        = 'utf-8'
let g:tagbar_silent           = 1

" tool to create ctags-compatible tag information
" for javascript files based on jsdoc comments
" required:
"   jsdoc-tags_npm-x.x.x-noarch-myreq
"
" :help tagbar-extend
let g:tagbar_type_javascript = {
    \ 'ctagstype' : 'javascript',
    \ 'ctagsbin': 'node',
    \ 'ctagsargs': '/usr/bin/jsdoc-tags -aqp',
    \ 'kinds': [
        \ 'o:object:1:1',
        \ 'c:classes:1:1',
        \ 'p:properties:1:1',
        \ 'f:functions:1:1',
        \ 'm:methods:1:1',
        \ 'v:Global variables:1:1',
        \ 'n:namespaces',
        \ 'a:array:1:1',
        \ 's:string:1:1'
    \ ],
    \ 'sro': '.',
    \ 'kind2scope': {
        \ 'c': 'class',
        \ 'n': 'namespace'
    \ },
    \ 'scope2kind': {
        \ 'namespace': 'n',
        \ 'class': 'c'
    \ },
    \ 'replace': 1,
    \ 'sort': 0
\}

" functions, variables
highlight! link TagbarKind Function
" nested functions, variables
highlight! link TagbarNestedKind Function
" classes, structs, ...
highlight! link TagbarScope String
" return type
highlight! link TagbarType Constant
" function signatures
highlight! link TagbarSignature Comment
" символ '*' для обозначения псевдотэгов
highlight! link TagbarPseudoID SignColumn
" '▸', '▾'
highlight! link TagbarFoldIcon DarkGrayOnBlack
" highlighting the current tag
highlight TagbarHighlight term=NONE cterm=bold ctermfg=1 ctermbg=NONE gui=NONE guisp=NONE guifg=#FF5555 guibg=NONE
" 'public' visibility symbol ('+')
highlight! link TagbarVisibilityPublic DarkGrayOnBlack
" 'protected' visibility symbol
highlight! link TagbarVisibilityProtected DarkGrayOnBlack
" 'private' visibility symbol
highlight! link TagbarVisibilityPrivate DarkGrayOnBlack
