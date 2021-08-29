scriptencoding utf-8

" <leader> {{{1
let g:mapleader = '-'
" <localleader>
let g:maplocalleader = '\\'
" 1}}}

" стрелки и <Backspace> не используем {{{1
for s:prefix in ['', 'i', 'n', 'v', 'c', 'o']
    execute s:prefix . 'map <BS> <Nop>'
    for s:key in ['<Up>', '<Down>', '<Left>', '<Right>']
        execute s:prefix . 'map ' . s:key . ' <Nop>'
    endfor
endfor
" 1}}}

" использовать режим синтаксического анализа регулярных {{{1
" выражений, приближенный к другим языках программирования
nnoremap / /\v
nnoremap ? ?\v
" 1}}}

" сброс режимов input, visual и op в normal {{{1
inoremap kj <Esc>
vnoremap <C-m> <Esc>
onoremap kj <Esc>
" 1}}}

" снять подсветку найденного {{{1
nnoremap <silent><C-k> :nohlsearch<cr>
" 1}}}

" установить/снять ширину вводимого текста в 80 символов {{{1
nnoremap <silent><leader>tw :let &textwidth = &textwidth ># 0 ? 0 : 80<cr>
    \ :echo 'textwidth: ' . &textwidth<cr>
" 1}}}

" показать/скрыть скрытые символы {{{1
nnoremap <silent><leader>hh :setlocal list!<cr>
" 1}}}

" редактировать/перечитать ~/vimrc {{{1
nnoremap <silent><leader>ev :vsplit $HOME/.vimrc<cr>
nnoremap <silent><leader>sv :source $HOME/.vimrc<cr>:nohlsearch<cr>
" 1}}}

" следующий/предыдущий буфер, закрыть буфер {{{1
nnoremap <silent><leader>bn :bnext<cr>
nnoremap <silent><leader>bp :bprevious<cr>
nnoremap <silent><leader>bd :bdelete<cr>
" 1}}}

" отключаем просмотр man для слова под курсором по 'K'. Функционал {{{1
" предоставляет плагин man.vim: <leader>K, :Man
nnoremap K <Nop>
" 1}}}

" системный буфер обмена: копирование/вставка (регистр "+) {{{1
" (Vim должен быть собран с 'xterm_clipboard', опции --enable-gui=auto --with-x)
vnoremap <silent><F7> "+y
nnoremap <silent><F8> "+p
" 1}}}

" меню смены кодировок файлов для чтения и записи {{{1
" ../autoload/encodings.vim
call encodings#SetMenuEncoding('Read', ':edit ++encoding=')
nnoremap <leader>er :emenu Encoding.Read.<Tab>
call encodings#SetMenuEncoding('Write', ':set fileencoding=')
nnoremap <leader>ew :emenu Encoding.Write.<Tab>
" 1}}}

" меню проверки правописания {{{1
nmenu SpellLang.nospell  :set nospell<cr>
nmenu SpellLang.ru-en    :set spell spelllang=ru_ru,en_us<cr>
nmenu SpellLang.ru       :set spell spelllang=ru_ru<cr>
nmenu SpellLang.en       :set spell spelllang=en_us<cr>
nnoremap <leader>sp :emenu SpellLang.<Tab>
" 1}}}

" меню выбора метода фолдинга {{{1
nmenu Folding.show_current   :set foldmethod?<cr>
nmenu Folding.manual         :set foldmethod=manual<cr>
nmenu Folding.syntax         :set foldmethod=syntax<cr>
nmenu Folding.indent         :set foldmethod=indent<cr>
nmenu Folding.marker         :set foldmethod=marker<cr>
nmenu Folding.expr           :set foldmethod=expr<cr>
nmenu Folding.diff           :set foldmethod=diff<cr>
nnoremap <leader>fd :emenu Folding.<Tab>
" 1}}}

" новая вкладка/закрыть вкладку/следующая/предыдущая {{{1
nnoremap <silent><C-t>      :tabnew<cr>
nnoremap <silent><C-c>      :tabclose<cr>
nnoremap <silent><leader>tn :tabnext<cr>
nnoremap <silent><leader>tp :tabprevious<cr>
" 1}}}

" удаление конечных пробелов и табуляций во всем буфере {{{1
" ../autoload/editing.vim
nnoremap <silent><leader>ss :call editing#RemoveTrailingSpaces()<cr>
" 1}}}

" замена табуляций на пробелы во всем буфере {{{1
nnoremap <silent><leader>ts :call editing#ReplaceTabsWithSpaces()<cr>
" 1}}}

" удалить строку без входа в insert mode {{{1
nnoremap 'dd S<Esc>
" 1}}}

" следующее/предыдушее окно {{{1
nnoremap <leader>wn <C-w>l
nnoremap <leader>wp <C-w>h
nnoremap <Tab> <C-w><C-w>
" 1}}}

" omni autocomplit {{{1
inoremap <C-k> <C-x><C-o>
" 1}}}

" ввод диграфов {{{1
inoremap <leader><C-k> <C-k>
" 1}}}

" команда '*' в normal mode не переходит на следующее совпадение, {{{1
" в visual mode подсвечивает выделенный текст во всем буфере
nnoremap * *N
vnoremap * y :execute ":let @/=@\""<cr>:set hlsearch<cr>
" 1}}}

" копировать в локальный и системный буфер обмена (регистры @* и @+) {{{1
" от позиции курсора и до конца строки
nnoremap yY vg_"+yvg_"*y
" 1}}}

" на первый символ строки, в конец строки {{{1
nnoremap Y ^
nnoremap T g_
vnoremap Y ^
vnoremap T g_
" 1}}}

" в visual mode (только visual line) передвигает выделенные строки {{{1
" вниз/вверх
" ../autoload/editing.vim
" vnoremap <silent><C-k> <Esc>:call editing#MoveLines(visualmode(), 'up')<cr>
" vnoremap <silent><C-j> <Esc>:call editing#MoveLines(visualmode(), 'down')<cr>
" 1}}}

" отключаем замену в режиме Visual {{{1
vnoremap r <Nop>
" 1}}}

" Ex mode {{{1
nnoremap <leader>ex Q
nnoremap Q <Nop>
" 1}}}

" отключаем перевод Vim'a в background {{{1
noremap <C-z> <Nop>
" 1}}}

" автозакрытие скобок {{{1
inoremap 'd ''<Esc>i
inoremap "d ""<Esc>i
inoremap (d ()<Esc>i
inoremap [d []<Esc>i
inoremap {d {}<Esc>i
inoremap <d <><Esc>i
" 1}}}

" добавление/удаление ';' в конце строки {{{1
" ../autoload/editing.vim
nnoremap <silent>;; :call editing#ToggleSemicolonOnEndOfLine()<cr>
" 1}}}

" выделение слова пробелом {{{1
" в конце добавляем движение курсора вперед-назад 'lh' для инициации события
" CursorHold (./autocommands.vim)
nnoremap <Space> viwlh
" 1}}}

" для команд, которые начинаются с 'q' {{{1
"   q{symb} - запись макросов
"   q:      - открыть окно истории команд
nnoremap <leader>q q
nnoremap q <Nop>
" 1}}}

" на конец/начало синтаксического блока по '{}' {{{1
" ../autoload/editing.vim
nmap <silent><leader>pa :call editing#GoToParentBrace()<cr>
" 1}}}

" нет никаких событий для autocmd при входе/выходе из режима visual, {{{1
" поэтому для смены цвета statusbar переопределяем привязки клавиш для вызова
" visual mode с движением курсора. Затем определяем событие CursorMoved в
" котором проверяется режим Vim (./autocommands.vim)
nnoremap v vlh
nnoremap V Vlh
nnoremap <C-v> <C-v>lh
" 1}}}

" '@@@' в insert mode вставляет email адрес, <C-c> - калькулятор {{{1
" Для вставки в буфер между <C-r>= и <cr> можно вставлять
" любое выражение или функцию
" ../autoload/editing.vim
inoremap <silent>@@@ <C-r>=editing#GetEmailAddress()<cr>
" калькулятор
" input('Calculate: ') - предлагает ввести выражение и его возвращает как строку
" eval() - вычисляет строковое выражение
inoremap <C-C> <C-R>=eval(input('Calculate: '))<CR>
" 1}}}

" изменение поведения <C-y> в insert mode {{{1
" Обычно это сочетание копирует символ стоящий на предыдущей строке. Изменим
" поведение таким образом, чтобы копировался символ на первой НЕ ПУСТОЙ строке
" над текущей.
" В случае формы с одиночным <C-r> (см. предыдущий маппинг) результат
" последующего выражения вставляется так, как будто бы он был набран
" непосредственно с клавиатуры, а значит, все содержащиеся в результате
" специальные символы сохраняют значение и поведение. В случае же формы с
" двойным <C-r> текст результата вставляется с точностью до символа, без
" какой-либо интерпретации и последующей обработки
" ../autoload/editing.vim
inoremap <silent><C-y> <C-r><C-r>=editing#LookUpwards()<CR>
" 1}}}

" выравниваение операторов присваивания {{{1
nnoremap <silent><leader>= :call editing#AlignAssignments()<CR>
" 1}}}

" открытие/закрытие окна Location List {{{1
nnoremap <silent><F4> :call locationlist#LocationListToggle()<cr>
" 1}}}

" перерисовать экран {{{1
" nnoremap <C-l> :redraw!<cr>
" 1}}}

" в insert mode установить все символы слова перед курсором в upper case {{{1
inoremap <C-u> <Esc>bveUea
" 1}}}

" автодополнение в insert mode {{{1
" тэгов
inoremap <C-]> <C-X><C-]>
" файлов
inoremap <C-f> <C-X><C-f>
" определений и макросов
inoremap <C-d> <C-X><C-d>
" строк целиком
inoremap <C-l> <C-X><C-l>
" 1}}}

" поиск двух пустых строк подряд (double empty) {{{1
nnoremap <leader>de /^\n\{2}<cr>
" 1}}}

" location list {{{1
nnoremap <silent>]e <Esc>:lnext<cr>
nnoremap <silent>[e <Esc>:lprevious<cr>
" 1}}}

" quickfix list {{{1
nnoremap <silent>]q <Esc>:cnext<cr>
nnoremap <silent>[q <Esc>:cprevious<cr>
" 1}}}

" декодирование выделенного base64 текста {{{1
" вывод результата в окне сообщений
vnoremap <leader>64 y :echo system('base64 --decode', @")<cr>
" замена кодированного текста на декодированный
vnoremap <leader>6p :'<,'>!base64 --decode<cr>
" 1}}}

" командная строка {{{1
" автодополение по совпадению уже набранного
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
" перемещение
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-f> <Right>
cnoremap <C-b> <Left>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>
cnoremap <C-d> <Del>
" очистить всю строку
cnoremap <C-u> <End><C-u>
" отключаем не нужное
cnoremap <C-q> <Nop>
cnoremap <C-k> <Nop>
cnoremap <C-y> <Nop>
cnoremap <C-l> <Nop>
cnoremap <C-^> <Nop>
" 1}}}
