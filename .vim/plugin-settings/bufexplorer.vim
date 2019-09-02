scriptencoding utf-8

" :h bufexplorer.txt
" :h :buffers

" не показывать help
let g:bufExplorerDefaultHelp              = 0
" отключить клавиши по умолчанию
let g:bufExplorerDisableDefaultKeyMapping = 1
" показывать [No Name] буферы
let g:bufExplorerShowNoName               = 1
" показывать 'unlisted' буферы
let g:bufExplorerShowUnlisted             = 1
" сортировать по номеру буфера
let g:bufExplorerSortBy                   = 'number'
" открывать окно сверху
let g:bufExplorerSplitBelow               = 0
" высота окна
let g:bufExplorerSplitHorzSize            = 15
" полный путь к файлу
let g:bufExplorerShowRelativePath         = 0
" имя файла отдельно от полного пути
let g:bufExplorerSplitOutPathName         = 1

" ~/.vim/bundle/bufexplorer.vim/plugin/bufexplorer.vim
" help, Press <F1> for Help
highlight! link bufExplorerHelp         Comment
" строка Sorted by ... | Locate ...
highlight! link bufExplorerSortBy       Comment
" при нажатии <F1>: Buffer Explorer (7.4.21)
highlight! link bufExplorerTitle        Function
" клавиши в help
highlight! link bufExplorerMapping      Function
" тип сортировки в help
highlight! link bufExplorerSortType     String
" текущий буфер
highlight! link bufExplorerCurBuf       SignColumn
" скрытые буферы
highlight! link bufExplorerHidBuf       Function
" альтернативный буфер (переход :e #)
highlight! link bufExplorerAltBuf       Function
" unlisted buffer
highlight! link bufExplorerUnlBuf       DarkGrayOnBlack
" буфер readonly, nomodifiable
highlight! link bufExplorerLockedBuf    Number
highlight! link bufExplorerOpenIn       Function
highlight! link bufExplorerActBuf       SignColumn
highlight! link bufExplorerBufNbr       Normal
highlight! link bufExplorerSplit        Comment
highlight! link bufExplorerToggleSplit  Comment
highlight! link bufExplorerToggleOpen   Comment
highlight! link bufExplorerModBuf       Function
highlight! link bufExplorerInactBuf     Function

nnoremap <silent><leader>bb :BufExplorerHorizontalSplit<CR>
