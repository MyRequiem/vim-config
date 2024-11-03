scriptencoding utf-8

set runtimepath+=$HOME/.vim/bundle/Vundle.vim

" использовать протокол git вместо https при создании абсолютных URI
let g:vundle_default_git_proto = 'git'

" обновить vimrc :so $MYVIMRC

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

" Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/VundleVim/Vundle.vim.git'

" Plugin 'MyRequiem/ag.vim',                  {'name': 'ag.vim'}
Plugin 'https://github.com/MyRequiem/ag.vim.git',                      {'name': 'ag.vim'}
" Plugin 'jlanzarotta/bufexplorer',           {'name': 'bufexplorer.vim'}
Plugin 'https://github.com/jlanzarotta/bufexplorer.git',               {'name': 'bufexplorer.vim'}
" Plugin 'MyRequiem/comment.vim',             {'name': 'comment.vim'}
Plugin 'https://github.com/MyRequiem/comment.vim.git',                 {'name': 'comment.vim'}
" Plugin 'airblade/vim-gitgutter',            {'name': 'gitgutter.vim'}
Plugin 'https://github.com/airblade/vim-gitgutter.git',                {'name': 'gitgutter.vim'}
" Plugin 'Yggdroot/indentLine',               {'name': 'indent-line.vim'}
Plugin 'https://github.com/Yggdroot/indentLine.git',                   {'name': 'indent-line.vim'}
" Plugin 'suan/vim-instant-markdown',         {'name': 'instant-markdown.vim'}
Plugin 'https://github.com/instant-markdown/vim-instant-markdown.git', {'name': 'instant-markdown.vim'}
" Plugin 'MyRequiem/man.vim',                 {'name': 'man.vim'}
Plugin 'https://github.com/MyRequiem/man.vim.git',                     {'name': 'man.vim'}
" Plugin 'MyRequiem/vim-niji',                {'name': 'niji.vim'}
Plugin 'https://github.com/MyRequiem/vim-niji.git',                    {'name': 'niji.vim'}
" Plugin 'thinca/vim-quickrun',               {'name': 'quickrun.vim'}
Plugin 'https://github.com/thinca/vim-quickrun.git',                   {'name': 'quickrun.vim'}
" Plugin 'MyRequiem/sessions.vim',            {'name': 'sessions.vim'}
Plugin 'https://github.com/MyRequiem/sessions.vim.git',                {'name': 'sessions.vim'}
" Plugin 'vim-scripts/vim-signature',         {'name': 'signature.vim'}
Plugin 'https://github.com/vim-scripts/vim-signature.git',             {'name': 'signature.vim'}
" Plugin 'garbas/vim-snipmate',               {'name': 'snippets.vim'}
Plugin 'https://github.com/garbas/vim-snipmate.git',                   {'name': 'snippets.vim'}
" Plugin 'tpope/vim-surround',                {'name': 'surround.vim'}
Plugin 'https://github.com/tpope/vim-surround.git',                    {'name': 'surround.vim'}
" Plugin 'vim-syntastic/syntastic',           {'name': 'syntastic.vim'}
Plugin 'https://github.com/vim-syntastic/syntastic.git',               {'name': 'syntastic.vim'}
" Plugin 'majutsushi/tagbar',                 {'name': 'tagbar.vim'}
Plugin 'https://github.com/preservim/tagbar.git',                      {'name': 'tagbar.vim'}
" ### deps for vim-snipmate ###
" Plugin 'tomtom/tlib_vim',                   {'name': 'tlib.vim'}
Plugin 'https://github.com/tomtom/tlib_vim.git',                       {'name': 'tlib.vim'}
" Plugin 'MyRequiem/translator.vim',          {'name': 'translator.vim'}
Plugin 'https://github.com/MyRequiem/translator.vim.git',              {'name': 'translator.vim'}
" ### deps for vim-snipmate ###
" Plugin 'MarcWeber/vim-addon-mw-utils',      {'name': 'vim-addon-mw-utils.vim'}
Plugin 'https://github.com/MarcWeber/vim-addon-mw-utils.git',          {'name': 'vim-addon-mw-utils.vim'}
" Plugin 'jimsei/winresizer',                 {'name': 'winresizer.vim'}
Plugin 'https://github.com/simeji/winresizer.git',                     {'name': 'winresizer.vim'}
" Plugin vim-open-url
Plugin 'https://github.com/dhruvasagar/vim-open-url',                  {'name': 'open-url'}

call vundle#end()
