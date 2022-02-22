scriptencoding utf-8

" m<symbol>     - установить/снять метку
" '<symbol>     - перейти к метке
" <C-n>         - на следующую метку
" m<Space>      - удалить все метки

nnoremap <silent><leader>mr :SignatureRefresh<cr>
let g:SignatureMap = {
    \ 'Leader'             :  'm',
    \ 'GotoNextLineByPos': '<C-n>',
\}

let g:SignaturePurgeConfirmation = 0
let g:SignatureMarkTextHL        = 'WildMenu'
let g:SignatureEnabledAtStartup  = 1
