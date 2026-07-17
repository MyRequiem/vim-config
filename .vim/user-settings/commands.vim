vim9script

# ../autoload/clearvim.vim
import autoload 'clearvim.vim'

### Очистить ~/.vim/{backup,view,undo}
command ClearVim clearvim.ClearVim()

# Открыть документацию.
command Docs          edit $HOME/docs/linux/
command Gitdoc        edit $HOME/docs/linux/git/
command Vimdoc        edit $HOME/docs/linux/vim/
command MyMappings    edit $HOME/.vim/doc/my-mappings.txt
command MyPlugHotkeys edit $HOME/.vim/doc/my-plug-hotkeys.txt
