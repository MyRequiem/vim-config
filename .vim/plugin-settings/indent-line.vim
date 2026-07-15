vim9script

###
# :h indentLine.txt
###

# вкл/выкл плагин.
g:indentLine_enabled = 1

if g:term_256_color
    g:indentLine_char = '┊'
else
    g:indentLine_char = '¦'
endif

# ЧТО ЗДЕСЬ ПРОИСХОДИТ С ЦВЕТАМИ:
# Опция 'g:indentLine_setColors = 0' полностью запрещает плагину управлять
# цветом линий. Вместо этого он послушно использует системную группу 'Conceal'
# личной цветовой схемы 'myrequiem.vim', в которой она является ссылкой на
# группу Ignore светло-серого цвета:
#
# :verbose hi Conceal
# Conceal        xxx links to Ignore
#         Last set from ~/projects/git/vim-config/.vim/colors/myrequiem.vim
# :verbose hi Ignore
# Ignore         xxx ctermfg=7 ctermbg=0 guifg=#AAAAAA guibg=#000000
#         Last set from ~/projects/git/vim-config/.vim/colors/myrequiem.vim
g:indentLine_setColors = 0

g:indentLine_indentLevel          = 10
g:indentLine_fileTypeExclude      = ['help', 'man']
g:indentLine_bufTypeExclude       = ['help', 'terminal', 'quickfix']
g:indentLine_bufNameExclude       = ['_.*']
g:indentLine_maxLines             = 20000
