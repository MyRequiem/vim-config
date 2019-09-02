scriptencoding utf-8

" o, v, t       - открыть горизонтально, вертикально, в новой вкладке
" P             - открыть в предыдущем окне
" cf            - открыть новый файл для редактирования
" d             - создать директорию
" D             - удалить файл/пустую директорию
" <c-r>         - обновить каталог
" h             - в родительский каталог
" l             - перейти в директорию/открыть файл
" u/U           - назад/вперед по истории
" i             - режим отображения
" I             - вкл/выкл баннер
" mb            - текущую директорию/файл в закладки
" qb            - список истории и закладок
" [count]mB     - удалить закладку номер count
" [count]gb     - открыть закладку номер count
" [count]u/U    - назад/вперед по истории
" qf            - вывести информацию о файле
" gn            - установить корневую директорию в древовидном режиме просмотра
" gp            - сменить права доступа для файла
" x             - просмотр файла ассоциированной программой
" X             - запустить исполняемый файл
" mf            - отметить файл
" mF            - снять отметки со всех отмеченных файлов
" md            - vimdiff для отмеченных файлов
" me            - редактировать отмеченные файлы
" ms            - source отмеченный файл
" mx            - применить команду shell для отмеченных файлов (chmod и т.д)
" mz            - gzip/gunzip для отмеченных файлов
" mt            - выбрать целевую директорию (для копирования, перемещения,...)
" mc            - скопировать выделенный файл в целевой каталог
" mm            - переместить выделенный файл в целевой каталог
" gh            - показать/скрыть скрытые файлы
" s             - изменить метод сортировки
" r             - изменить порядок сортировки на обратный
" cd            - установить каталог как текущий для Vim
" O             - скачать удаленный файл в текущий каталог Vim
" R             - переименовать файл

" ../autoload/myNetrw.vim
" копировать имя файла/полный путь к файлу
nnoremap <silent>yf     :call myNetrw#SaveFileName(0)<cr>
nnoremap <silent>yF     :call myNetrw#SaveFileName(1)<cr>

" в родительскую директорию
nmap <buffer> <silent> <nowait>     h       <Plug>NetrwBrowseUpDir
" перейти в директорию/открыть файл
nmap <buffer> <silent> <nowait>     l       <Plug>NetrwLocalBrowseCheck
" обновить директорию
nmap <buffer> <silent> <nowait> <C-r>       <Plug>NetrwRefresh
" открыть новый файл для редактирования, создать директорию
nmap <buffer> <silent> <nowait>     cf      <Plug>NetrwOpenFile
" перейти в текущую для Vim директорию (cd {pwd})
" ../autoload/myNetrw.vim
nmap <buffer> <silent> <nowait>     C       :call myNetrw#GoToRootDir()<cr>
" пробел выделяет файлы с переходом на следующий файл
nmap <buffer> <silent> <nowait>     <Space> mfj

nnoremap <buffer> <silent> <nowait> -bn     :bnext<cr>
nnoremap <buffer> <silent> <nowait> -bp     :bprevious<cr>
nnoremap <buffer> <silent> <nowait> -ch     :nohlsearch<cr>

nnoremap <buffer> <silent> <nowait> -       <Nop>
nnoremap <buffer> <silent> <nowait> p       <Nop>
nnoremap <buffer> <silent> <nowait> a       <Nop>
nnoremap <buffer> <silent> <nowait> S       <Nop>
nnoremap <buffer> <silent> <nowait> %       <Nop>
nnoremap <buffer> <silent> <nowait> ma      <Nop>
nnoremap <buffer> <silent> <nowait> mh      <Nop>
nnoremap <buffer> <silent> <nowait> mr      <Nop>
nnoremap <buffer> <silent> <nowait> mg      <Nop>
nnoremap <buffer> <silent> <nowait> mp      <Nop>
nnoremap <buffer> <silent> <nowait> mv      <Nop>
nnoremap <buffer> <silent> <nowait> mu      <Nop>
nnoremap <buffer> <silent> <nowait> mA      <Nop>
nnoremap <buffer> <silent> <nowait> mT      <Nop>
nnoremap <buffer> <silent> <nowait> mX      <Nop>
nnoremap <buffer> <silent> <nowait> qF      <Nop>
nnoremap <buffer> <silent> <nowait> qL      <Nop>
nnoremap <buffer> <silent> <nowait> cb      <Nop>
nnoremap <buffer> <silent> <nowait> cB      <Nop>
nnoremap <buffer> <silent> <nowait> Tb      <Nop>
nnoremap <buffer> <silent> <nowait> Th      <Nop>
nnoremap <buffer> <silent> <nowait> <C-l>   <Nop>
nnoremap <buffer> <silent> <nowait> <C-h>   <Nop>

""" все маппинги по умолчанию
" (определенные в /usr/share/vim/vim81/autoload/netrw.vim)
" a     <Plug>NetrwHide_a
" -     <Plug>NetrwBrowseUpDir
" %     <Plug>NetrwOpenFile
" cb	<Plug>NetrwBadd_cb
" cB    <Plug>NetrwBadd_cB
" cd	<Plug>NetrwLcd
" C     <Plug>NetrwSetChgwin
" <c-l> <Plug>NetrwRefresh
" <cr>  <Plug>NetrwLocalBrowseCheck
" <c-r> <Plug>NetrwServerEdit
" d     <Plug>NetrwMakeDir
" gb	<Plug>NetrwBookHistHandler_gb
" gd	<Plug>NetrwForceChgDir
" gf	<Plug>NetrwForceFile
" gh	<Plug>NetrwHidden
" gn	<Plug>NetrwSetTreetop
" gp	<Plug>NetrwChgPerm
" I     <Plug>NetrwBannerCtrl
" i     <Plug>NetrwListStyle
" ma	<Plug>NetrwMarkMoveMF2Arglist
" mA	<Plug>NetrwMarkMoveArglist2MF
" mb	<Plug>NetrwBookHistHandler_mA
" mB	<Plug>NetrwBookHistHandler_mB
" mc	<Plug>NetrwMarkFileCopy
" md	<Plug>NetrwMarkFileDiff
" me	<Plug>NetrwMarkFileEdit
" mf	<Plug>NetrwMarkFile
" mF	<Plug>NetrwUnmarkList
" mg	<Plug>NetrwMarkFileGrep
" mh	<Plug>NetrwMarkHideSfx
" mm	<Plug>NetrwMarkFileMove
" mp	<Plug>NetrwMarkFilePrint
" mr	<Plug>NetrwMarkFileRegexp
" ms	<Plug>NetrwMarkFileSource
" mT	<Plug>NetrwMarkFileTag
" mt	<Plug>NetrwMarkFileTgt
" mu	<Plug>NetrwUnMarkFile
" mv	<Plug>NetrwMarkFileVimCmd
" mx	<Plug>NetrwMarkFileExe_mx
" mX	<Plug>NetrwMarkFileExe_mX
" mz	<Plug>NetrwMarkFileCompress
" O     <Plug>NetrwObtain
" o     <Plug>NetrwSplit_o
" p     <Plug>NetrwPreview
" P     <Plug>NetrwPrevWinOpen
" qb	<Plug>NetrwBookHistHandler_qb
" qf	<Plug>NetrwFileInfo
" qF	<Plug>NetrwMarkFileQFEL_qF
" qL	<Plug>NetrwMarkFileQFEL_qL
" s     <Plug>NetrwSortStyle
" Tb	<Plug>NetrwSetTgt_Tb
" Th	<Plug>NetrwSetTgt_Th
" t     <Plug>NetrwSplit_t
" u     <Plug>NetrwBookHistHandler_u
" U     <Plug>NetrwBookHistHandler_U
" v     <Plug>NetrwSplit_v
" x     <Plug>NetrwBrowseX
" X     <Plug>NetrwLocalExecute
