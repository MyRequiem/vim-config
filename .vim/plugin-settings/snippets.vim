let g:snips_author                                = 'MyRequiem'
let g:snipMate                                    = {}
let g:snipMate.description_in_completion          = 1
let g:snipMate.no_match_completion_feedkeys_chars = '    '
let g:snipMate.override                           = 1
let g:snipMate.always_choose_first                = 0
let g:snipMate.description_in_completion          = 1
let g:snipMate.snippet_version                    = 1

let g:snipMate.get_snippets  = {
    \ 'faked_function_reference': 'snipMate#GetSnippets'
\}
let g:snipMate.get_scopes    = {
    \ 'faked_function_reference': 'return split(&ft,"\\.")+[&syntax, "_"]'
\}
let g:snipMate.scope_aliases = {
    \ 'javascript'    : 'javascript,html',
    \ 'html'          : 'html,javascript',
    \ 'cpp'           : 'c',
    \ 'php'           : 'php,html,javascript'
\}
