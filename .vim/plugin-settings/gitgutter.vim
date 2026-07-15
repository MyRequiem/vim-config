vim9script

###
# :h gitgutter.txt
###

# Выключить плагин.
# g:gitgutter_enabled = 0

# Обновить метки.
nnoremap <silent> <leader>hg :GitGutter<CR>
# Следующее/предыдущее изменение.
nnoremap <silent> <leader>hn :GitGutterNextHunk<CR>
nnoremap <silent> <leader>hN :GitGutterPrevHunk<CR>
# Просмотр текущего изменения.
nnoremap <silent> <leader>hp :GitGutterPreviewHunk<CR><C-w>w

# Не индексируем изменения в редакторе (GitGutterStageHunk).
nnoremap <silent> <leader>hs <Nop>

g:gitgutter_sign_added            = '++'
g:gitgutter_sign_modified         = '✔'
g:gitgutter_sign_removed          = '−−'
g:gitgutter_sign_modified_removed = '~~'

highlight default link GitGutterAdd          MoreMsg
highlight default link GitGutterChange       Constant
highlight default link GitGutterDelete       Number
highlight default link GitGutterChangeDelete Identifier
