scriptencoding utf-8

set runtimepath+=$HOME/.vim/bundle/Vundle.vim

" Использовать протокол git вместо https при создании абсолютных URI.
let g:vundle_default_git_proto = 'git'

" Обновить vimrc :so $MYVIMRC

" Установка/Обновление.
"   :PluginInstall
"   :PluginUpdate

" Список установленных плагинов.
"   :PluginList

" Окно результатов.
"   u - ChangeLog обновлений
"   l - лог команд при обновлении

call vundle#begin()

Plugin 'VundleVim/Vundle.vim.git'
Plugin 'MyRequiem/ag.vim.git',                  {'name': 'ag.vim'}
Plugin 'jlanzarotta/bufexplorer.git',           {'name': 'bufexplorer.vim'}
Plugin 'MyRequiem/comment.vim.git',             {'name': 'comment.vim'}
Plugin 'airblade/vim-gitgutter.git',            {'name': 'gitgutter.vim'}
Plugin 'Yggdroot/indentLine.git',               {'name': 'indent-line.vim'}
Plugin 'luochen1990/rainbow',                   {'name': 'rainbow.vim'}
Plugin 'MyRequiem/man.vim.git',                 {'name': 'man.vim'}
Plugin 'instant-markdown/vim-instant-markdown', {'name': 'markdown'}
Plugin 'instant-markdown/instant-markdown-d',   {'name': 'markdown-d'}             " deps for vim-instant-markdown
Plugin 'dhruvasagar/vim-open-url.git',          {'name': 'open-url.vim'}
Plugin 'thinca/vim-quickrun.git',               {'name': 'quickrun.vim'}
Plugin 'MyRequiem/sessions.vim.git',            {'name': 'sessions.vim'}
Plugin 'vim-scripts/vim-signature.git',         {'name': 'signature.vim'}
Plugin 'garbas/vim-snipmate.git',               {'name': 'snippets.vim'}
Plugin 'tpope/vim-surround.git',                {'name': 'surround.vim'}
Plugin 'vim-syntastic/syntastic.git',           {'name': 'syntastic.vim'}
Plugin 'preservim/tagbar.git',                  {'name': 'tagbar.vim'}
Plugin 'tomtom/tlib_vim.git',                   {'name': 'tlib.vim'}               " dep for snippets.vim
Plugin 'MyRequiem/translator.vim.git',          {'name': 'translator.vim'}
Plugin 'MarcWeber/vim-addon-mw-utils.git',      {'name': 'vim-addon-mw-utils.vim'} " dep for snippets.vim
Plugin 'simeji/winresizer.git',                 {'name': 'winresizer.vim'}

call vundle#end()

" vim:nowrap
