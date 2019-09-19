let g:tagbar_ctags_bin        = '/usr/bin/ctags'
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

highlight TagbarKind ctermfg=3
highlight TagbarNestedKind ctermfg=3
highlight TagbarScope ctermfg=14
"     Tags that define a scope like classes, structs etc.
"
" TagbarType
"     The type of a tag or scope if available.
"
" TagbarSignature
"     Function signatures.
"
" TagbarPseudoID
"     The asterisk (*) that signifies a pseudo-tag.
"
" TagbarFoldIcon
"     The fold icon on the left of foldable tags.
"
" TagbarHighlight
"     The colour that is used for automatically highlighting the current tag.
"
" TagbarVisibilityPublic
"     The "public" visibility symbol.
"
" TagbarVisibilityProtected
"     The "protected" visibility symbol.
"
" TagbarVisibilityPrivate
"     The "private" visibility symbol.
"
" tool to create ctags-compatible tag information
" for javascript files based on jsdoc comments
"   $ cd ~/bin
"   $ npm install jsdoc-tags
"   $ ln -s node_modules/jsdoc-tags/bin/jsdoc-tags jsdoc-tags
let g:tagbar_type_javascript = {
    \ 'ctagstype' : 'javascript',
    \ 'ctagsbin': 'node',
    \ 'ctagsargs': '/usr/bin/jsdoc-tags -aq',
    \ 'kinds': [
        \ 'c:classes',
        \ 'p:properties:0:1',
        \ 'f:functions:0:1',
        \ 'v:variables:0:0',
        \ 'n:namespaces',
        \ 'e:event',
    \ ],
    \ 'kind2scope': {
        \ 'n' : 'namespace',
        \ 'c' : 'class'
    \ },
    \ 'scope2kind': {
        \ 'namespace': 'n',
        \ 'class': 'c'
    \ },
    \ 'sro': '.',
    \ 'replace': 1
\ }

nnoremap <silent><F12> :TagbarToggle<CR>
