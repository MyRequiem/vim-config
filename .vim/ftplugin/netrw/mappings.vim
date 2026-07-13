vim9script

# ../../autoload/myNetrw.vim
import autoload 'myNetrw.vim'


# Копировать имя файла/полный путь к файлу.
nnoremap <buffer><silent>yf             <ScriptCmd>myNetrw.SaveFileName(0)<CR>
nnoremap <buffer><silent>yF             <ScriptCmd>myNetrw.SaveFileName(1)<CR>
# пробел выделяет/снимает выделение
nnoremap <buffer><silent><Space>        <ScriptCmd>myNetrw.ToggleMarkItem()<CR>
# в родительскую директорию
nnoremap <buffer><silent><nowait> h     <Plug>NetrwBrowseUpDir
# перейти в директорию/открыть файл
nnoremap <buffer><silent><nowait> l     <Plug>NetrwLocalBrowseCheck
# обновить директорию
nnoremap <buffer><silent><nowait> <C-r> <Plug>NetrwRefresh
# открыть новый файл для редактирования, создать директорию
nnoremap <buffer><silent><nowait> cf    <Plug>NetrwOpenFile

nnoremap <buffer><silent>         -     <Nop>
nnoremap <buffer><silent><nowait> p     <Nop>
nnoremap <buffer><silent><nowait> P     <Nop>
nnoremap <buffer><silent><nowait> C     <Nop>
nnoremap <buffer><silent><nowait> v     <Nop>
nnoremap <buffer><silent><nowait> o     <Nop>
nnoremap <buffer><silent><nowait> u     <Nop>
nnoremap <buffer><silent><nowait> U     <Nop>
nnoremap <buffer><silent><nowait> I     <Nop>
nnoremap <buffer><silent><nowait> a     <Nop>
nnoremap <buffer><silent><nowait> x     <Nop>
nnoremap <buffer><silent><nowait> X     <Nop>
nnoremap <buffer><silent><nowait> s     <Nop>
nnoremap <buffer><silent><nowait> r     <Nop>
nnoremap <buffer><silent><nowait> O     <Nop>
nnoremap <buffer><silent><nowait> md    <Nop>
nnoremap <buffer><silent><nowait> me    <Nop>
nnoremap <buffer><silent><nowait> ms    <Nop>
nnoremap <buffer><silent><nowait> mx    <Nop>
nnoremap <buffer><silent><nowait> mz    <Nop>
nnoremap <buffer><silent><nowait> S     <Nop>
nnoremap <buffer><silent><nowait> %     <Nop>
nnoremap <buffer><silent><nowait> ma    <Nop>
nnoremap <buffer><silent><nowait> mb    <Nop>
nnoremap <buffer><silent><nowait> qb    <Nop>
nnoremap <buffer><silent><nowait> qf    <Nop>
nnoremap <buffer><silent><nowait> gn    <Nop>
nnoremap <buffer><silent><nowait> gp    <Nop>
nnoremap <buffer><silent><nowait> mh    <Nop>
nnoremap <buffer><silent><nowait> mr    <Nop>
nnoremap <buffer><silent><nowait> mg    <Nop>
nnoremap <buffer><silent><nowait> mp    <Nop>
nnoremap <buffer><silent><nowait> mv    <Nop>
nnoremap <buffer><silent><nowait> mu    <Nop>
nnoremap <buffer><silent><nowait> mA    <Nop>
nnoremap <buffer><silent><nowait> mT    <Nop>
nnoremap <buffer><silent><nowait> mX    <Nop>
nnoremap <buffer><silent><nowait> qF    <Nop>
nnoremap <buffer><silent><nowait> qL    <Nop>
nnoremap <buffer><silent><nowait> cb    <Nop>
nnoremap <buffer><silent><nowait> cB    <Nop>
nnoremap <buffer><silent><nowait> Tb    <Nop>
nnoremap <buffer><silent><nowait> Th    <Nop>
nnoremap <buffer><silent><nowait> <C-l> <Nop>
nnoremap <buffer><silent><nowait> <C-h> <Nop>
