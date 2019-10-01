scriptencoding utf-8

" выключить плагин
" let g:gitgutter_enabled = 0

" :GitGutterToggle                  - вкл/выкл плагин
" :GitGutterSignsToggle             - вкл/выкл метки
" :GitGutterQuickFix                - загрузить все изменения в quickfix

" обновить метки
nnoremap <silent><leader>hg :GitGutter<cr>
" следующее/предыдущее изменение
nnoremap <silent><leader>hn :GitGutterNextHunk<cr>
nnoremap <silent><leader>hN :GitGutterPrevHunk<cr>
" просмотр текущего изменения
nnoremap <silent><leader>hp :GitGutterPreviewHunk<cr>
" отменить текущее изменение
nnoremap <silent><leader>hu :GitGutterUndoHunk<cr>
" индексировать текущее изменение
nnoremap <silent><leader>hs :GitGutterStageHunk<cr>
" сложить все НЕ измененные строки
nnoremap <silent><leader>hf :GitGutterFold<cr>
" вкл/выкл подсветку измененных строк
nnoremap <silent><leader>hl :GitGutterLineHighlightsToggle<cr>

let g:gitgutter_git_executable                 = '/usr/bin/git'
let g:gitgutter_preview_win_location           = 'bo'
let g:gitgutter_grep                           = 'grep --color=never'
let g:gitgutter_signs                          = 1
let g:gitgutter_highlight_lines                = 0
let g:gitgutter_highlight_linenrs              = 0
let g:gitgutter_max_signs                      = 1000
let g:gitgutter_sign_priority                  = 10
let g:gitgutter_sign_allow_clobber             = 1
let g:gitgutter_sign_added                     = '++'
let g:gitgutter_sign_modified                  = '✔'
let g:gitgutter_sign_removed                   = '−−'
let g:gitgutter_sign_modified_removed          = '~~'
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_preview_win_floating           = 0
let g:gitgutter_terminal_reports_focus         = 1
let g:gitgutter_map_keys                       = 1
let g:gitgutter_async                          = 1
let g:gitgutter_log                            = 0

highlight  GitGutterAddLine             term=NONE cterm=NONE         ctermfg=15 ctermbg=2  gui=NONE guisp=NONE guifg=#FFFFFF guibg=#00AA00
highlight  GitGutterChangeLine          term=NONE cterm=bold,reverse ctermfg=4  ctermbg=15 gui=NONE guisp=NONE guifg=#FFFFFF guibg=#5555FF
highlight  GitGutterDeleteLine          term=NONE cterm=NONE         ctermfg=15 ctermbg=1  gui=NONE guisp=NONE guifg=#FFFFFF guibg=#AA0000
highlight  GitGutterChangeDeleteLine    term=NONE cterm=NONE         ctermfg=15 ctermbg=3  gui=NONE guisp=NONE guifg=#FFFFFF guibg=#AA5500
highlight! link GitGutterAdd            MoreMsg
highlight! link GitGutterChange         Constant
highlight! link GitGutterDelete         Number
highlight! link GitGutterChangeDelete   Identifier
