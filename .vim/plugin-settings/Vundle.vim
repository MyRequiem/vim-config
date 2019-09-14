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
Plugin 'Yggdroot/indentLine',               {'name': 'indent-line.vim'}
Plugin 'MyRequiem/man.vim'
Plugin 'MyRequiem/sessions.vim'
Plugin 'garbas/vim-snipmate',               {'name': 'snippets.vim'}
Plugin 'vim-syntastic/syntastic',           {'name': 'syntastic.vim'}
" deps for vim-snipmate
Plugin 'tomtom/tlib_vim',                   {'name': 'tlib.vim'}
Plugin 'MyRequiem/translator.vim'
" deps for vim-snipmate
Plugin 'MarcWeber/vim-addon-mw-utils',      {'name': 'vim-addon-mw-utils.vim'}

call vundle#end()

" " Vim binding to the autocompletion library Jedi
" Plugin 'davidhalter/jedi-vim'
" " allows to explore filesystem and to open files and directories
" Plugin 'scrooloose/nerdtree'
" " integrates the Python documentation view and search tool
" Plugin 'fs111/pydoc.vim'
" " create python code very quickly by utilizing libraries including
" " pylint, rope, pydoc, pyflakes, pep8, autopep8, pep257 and mccabe
" " for features like static analysis, refactoring, folding, completion,
" " documentation, and more.
" Plugin 'python-mode/python-mode'
" " syntax checking
" Plugin 'scrooloose/syntastic'
" " provides an easy way to browse the tags
" Plugin 'majutsushi/tagbar'
" " universal comment plugin
" Plugin 'tomtom/tcomment_vim'
" " change status bar and tab line
" Plugin 'vim-airline/vim-airline'
" " close a buffer without closing the window
" Plugin 'qpkorr/vim-bufkill'
" " git wrapper (status, diff, etc)
" Plugin 'tpope/vim-fugitive'
" " extension for vim-fugitive plugin
" Plugin 'tpope/vim-rhubarb'
" " git:
" "   - shows signs for added/modified/removed lines
" "   - highlight changed line
" "   - quick jumping between hunks
" "   - preview(view diff)/undo individual hunks
" Plugin 'airblade/vim-gitgutter'
" " view and edit markdown files (.md) in real time
" Plugin 'suan/vim-instant-markdown'
" " colored brackets
" Plugin 'raymond-w-ko/vim-niji'
" " run a command and show its result quickly
" Plugin 'thinca/vim-quickrun'
" " using command '.' after a plugin map
" " (remaps '.' in a way that plugins can tap into it)
" Plugin 'tpope/vim-repeat'
" " place, toggle and display marks
" Plugin 'vim-scripts/vim-signature'
" " easily delete, change and add surroundings
" " pairs parentheses, brackets, quotes etc.
" Plugin 'tpope/vim-surround'
" " easy resizing of vim windows
" Plugin 'jimsei/winresizer'
" " view man pages in vim. Grep for the man pages
" Plugin 'vim-utils/vim-man'
" " accurately completing C and C++ code
" Plugin 'xavierd/clang_complete'
" " translate text using 'trans'
" Plugin 'MyRequiem/vim-translator'
" " linting (syntax checking and semantic errors)
" Plugin 'w0rp/ale'
