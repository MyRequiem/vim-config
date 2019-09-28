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
Plugin 'jlanzarotta/bufexplorer',           {'name': 'bufexplorer.vim'}
Plugin 'MyRequiem/comment.vim'
Plugin 'airblade/vim-gitgutter',            {'name': 'gitgutter.vim'}
Plugin 'sjl/gundo.vim'
Plugin 'Yggdroot/indentLine',               {'name': 'indent-line.vim'}
Plugin 'suan/vim-instant-markdown',         {'name': 'instant-markdown.vim'}
Plugin 'MyRequiem/man.vim'
Plugin 'raymond-w-ko/vim-niji',             {'name': 'niji.vim'}
Plugin 'MyRequiem/sessions.vim'
Plugin 'garbas/vim-snipmate',               {'name': 'snippets.vim'}
Plugin 'tpope/vim-surround',                {'name': 'surround.vim'}
Plugin 'vim-syntastic/syntastic',           {'name': 'syntastic.vim'}
Plugin 'majutsushi/tagbar',                 {'name': 'tagbar.vim'}
" deps for vim-snipmate
Plugin 'tomtom/tlib_vim',                   {'name': 'tlib.vim'}
Plugin 'MyRequiem/translator.vim'
" deps for vim-snipmate
Plugin 'MarcWeber/vim-addon-mw-utils',      {'name': 'vim-addon-mw-utils.vim'}
Plugin 'jimsei/winresizer',                 {'name': 'winresizer.vim'}

call vundle#end()

" Vim binding to the autocompletion library Jedi
" Plugin 'davidhalter/jedi-vim'

" integrates the Python documentation view and search tool
" Plugin 'fs111/pydoc.vim'

" create python code very quickly by utilizing libraries including
" pylint, rope, pydoc, pyflakes, pep8, autopep8, pep257 and mccabe
" for features like static analysis, refactoring, folding, completion,
" documentation, and more.
" Plugin 'python-mode/python-mode'


" git wrapper (status, diff, etc)
" Plugin 'tpope/vim-fugitive'

" extension for vim-fugitive plugin
" Plugin 'tpope/vim-rhubarb'


" " run a command and show its result quickly
" Plugin 'thinca/vim-quickrun'
" " place, toggle and display marks
" Plugin 'vim-scripts/vim-signature'
" " view man pages in vim. Grep for the man pages
" Plugin 'vim-utils/vim-man'
" " accurately completing C and C++ code
" Plugin 'xavierd/clang_complete'
