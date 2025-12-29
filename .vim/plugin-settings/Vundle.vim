scriptencoding utf-8

set runtimepath+=$HOME/.vim/bundle/Vundle.vim

" использовать протокол git вместо https при создании абсолютных URI
let g:vundle_default_git_proto = 'git'

" обновить vimrc :so $MYVIMRC

" Установка/Обновление
"   :PluginInstall
"   :PluginUpdate

" Список установленных плагинов:
"   :PluginList

" Окно результатов:
"   u - ChangeLog обновлений
"   l - лог команд при обновлении

call vundle#begin()

Plugin 'VundleVim/Vundle.vim.git'
Plugin 'vim-syntastic/syntastic.git',               {'name': 'syntastic.vim'}
Plugin 'jlanzarotta/bufexplorer.git',               {'name': 'bufexplorer.vim'}        " <leader>bb
Plugin 'airblade/vim-gitgutter.git',                {'name': 'gitgutter.vim'}          " git change marks
Plugin 'Yggdroot/indentLine.git',                   {'name': 'indent-line.vim'}        " indentation highlighting
Plugin 'thinca/vim-quickrun.git',                   {'name': 'quickrun.vim'}           " <leader>r
Plugin 'vim-scripts/vim-signature.git',             {'name': 'signature.vim'}          " show marks
Plugin 'tpope/vim-surround.git',                    {'name': 'surround.vim'}           " ds{surround}, cs{from}{to}
Plugin 'preservim/tagbar.git',                      {'name': 'tagbar.vim'}             " <F12>
Plugin 'tomtom/tlib_vim.git',                       {'name': 'tlib.vim'}               " deps for snippets.vim
Plugin 'MarcWeber/vim-addon-mw-utils.git',          {'name': 'vim-addon-mw-utils.vim'} " deps for snippets.vim
Plugin 'garbas/vim-snipmate.git',                   {'name': 'snippets.vim'}           " sheb<TAB> -> shebang
Plugin 'simeji/winresizer.git',                     {'name': 'winresizer.vim'}         " <Ctrl+l>
Plugin 'dhruvasagar/vim-open-url.git',              {'name': 'open-url.vim'}           " gB
Plugin 'MyRequiem/man.vim.git',                     {'name': 'man.vim'}
Plugin 'MyRequiem/vim-niji.git',                    {'name': 'niji.vim'}               " colored brackets
Plugin 'MyRequiem/sessions.vim.git',                {'name': 'sessions.vim'}
Plugin 'MyRequiem/translator.vim.git',              {'name': 'translator.vim'}         " selected text, tr
Plugin 'MyRequiem/comment.vim.git',                 {'name': 'comment.vim'}
Plugin 'MyRequiem/ag.vim.git',                      {'name': 'ag.vim'}
Plugin 'instant-markdown/instant-markdown-d',       {'name': 'markdown-d'}             " deps for vim-instant-markdown
Plugin 'instant-markdown/vim-instant-markdown',     {'name': 'markdown'}

call vundle#end()
