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

Plugin 'MyRequiem/ag.vim',                  {'name': 'ag.vim'}
Plugin 'jlanzarotta/bufexplorer',           {'name': 'bufexplorer.vim'}
Plugin 'MyRequiem/comment.vim',             {'name': 'comment.vim'}
Plugin 'airblade/vim-gitgutter',            {'name': 'gitgutter.vim'}
Plugin 'sjl/gundo.vim',                     {'name': 'gundo.vim'}
Plugin 'Yggdroot/indentLine',               {'name': 'indent-line.vim'}
Plugin 'suan/vim-instant-markdown',         {'name': 'instant-markdown.vim'}
Plugin 'MyRequiem/man.vim',                 {'name': 'man.vim'}
Plugin 'MyRequiem/vim-niji',                {'name': 'niji.vim'}
Plugin 'thinca/vim-quickrun',               {'name': 'quickrun.vim'}
Plugin 'MyRequiem/sessions.vim',            {'name': 'sessions.vim'}
Plugin 'vim-scripts/vim-signature',         {'name': 'signature.vim'}
Plugin 'garbas/vim-snipmate',               {'name': 'snippets.vim'}
Plugin 'tpope/vim-surround',                {'name': 'surround.vim'}
Plugin 'vim-syntastic/syntastic',           {'name': 'syntastic.vim'}
Plugin 'majutsushi/tagbar',                 {'name': 'tagbar.vim'}
" deps for vim-snipmate
Plugin 'tomtom/tlib_vim',                   {'name': 'tlib.vim'}
Plugin 'MyRequiem/translator.vim',          {'name': 'translator.vim'}
" deps for vim-snipmate
Plugin 'MarcWeber/vim-addon-mw-utils',      {'name': 'vim-addon-mw-utils.vim'}
Plugin 'jimsei/winresizer',                 {'name': 'winresizer.vim'}

call vundle#end()
