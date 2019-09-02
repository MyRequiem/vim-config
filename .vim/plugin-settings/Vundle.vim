scriptencoding utf-8

set runtimepath+=$HOME/.vim/bundle/Vundle.vim

" использовать протокол git вместо https при создании абсолютных URI
let g:vundle_default_git_proto = 'git'

" Установка/удаление:
"   :PluginInstall [tpope/vim-surround] [tpope/vim-fugitive]
"   :PluginClean

" Обновление:
"   :PluginUpdate [plugname]

" Поиск плагина в репозитории:
"   :PluginSearch [template]

" Список установленных плагинов:
"   :PluginList

" Окно результатов:
"   u - ChangeLog обновлений
"   l - лог команд при обновлении

call vundle#begin()

" Plugin 'sjl/gundo.vim' -> git@github.com:sjl/gundo.git
" Plugin 'ctrlp.vim' => https://github.com/vim-scripts/ctrlp.vim
" Plugin 'git://git.wincent.com/command-t.git'
" Plugin 'file:///path/from/root/to/plugin'
Plugin 'VundleVim/Vundle.vim'

Plugin 'MyRequiem/ag.vim'
Plugin 'MyRequiem/comment.vim'
Plugin 'vim-syntastic/syntastic', {'name': 'syntastic.vim'}
Plugin 'MyRequiem/translator.vim'
Plugin 'jlanzarotta/bufexplorer', {'name': 'bufexplorer.vim'}

call vundle#end()
