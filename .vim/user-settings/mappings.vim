vim9script

# ../autoload/toggleTextWidth80.vim
import autoload 'toggleTextWidth80.vim'
# ../autoload/toggleColumn81.vim
import autoload 'toggleColumn81.vim'
# ../autoload/encodings.vim
import autoload 'encodings.vim'
# ../autoload/editing.vim
import autoload 'editing.vim'
# ../autoload/locationlist.vim
import autoload 'locationlist.vim'

# <leader>
g:mapleader = '-'
# <localleader>
g:maplocalleader = '\\'

### Стрелки и <Backspace> не используем.
var prefixes = ['', 'i', 'n', 'v', 'c', 'o']
var keys = ['<Up>', '<Down>', '<Left>', '<Right>']

for prefix in prefixes
    # Напрямую выполняем команду map через интерполяцию строки.
    execute $"{prefix}map <BS> <Nop>"

    for key in keys
        execute $"{prefix}map {key} <Nop>"
    endfor
endfor

# Использовать режим синтаксического анализа регулярных выражений,
# приближенный к другим языкам программирования.
nnoremap / /\v
nnoremap ? ?\v

# Сброс режимов input, op и visual в normal.
# op - operator: например нажали 'd', Vim замирает и ждет, что именно удалить.
inoremap kj    <Esc>
onoremap kj    <Esc>
vnoremap <C-m> <Esc>

# Снять подсветку найденного.
nnoremap <silent><C-k> :nohlsearch<CR>

# Установить/снять ширину вводимого текста в 80 символов.
nnoremap <silent><leader>tw <ScriptCmd>toggleTextWidth80.ToggleTextWidth80()<CR>

# Показать/спрятать 81 столбец.
nnoremap <silent><leader>cc <ScriptCmd>toggleColumn81.ToggleColumn81()<CR>

# Показать/скрыть скрытые символы.
nnoremap <silent><leader>hh :setlocal list!<CR>

# следующий/предыдущий буфер.
nnoremap <silent><leader>bn :bnext<CR>
nnoremap <silent><leader>bp :bprevious<CR>
# Закрыть буфер.
nnoremap <silent><leader>bd :bdelete<CR>

# Отключаем просмотр man для слова под курсором по 'K'. Функционал
# предоставляет плагин man.vim: <leader>K, :Man
nnoremap K <Nop>

# Копировать выделенное в CLIPBOARD
vnoremap <silent><F7> "+y
# Вставить из CLIPBOARD
nnoremap <silent><F8> "+p

# Меню смены кодировок файлов для чтения и записи.
encodings.SetMenuEncoding('Read', ':edit ++encoding=')
nnoremap <leader>er :emenu Encoding.Read.<Tab>
encodings.SetMenuEncoding('Write', ':set fileencoding=')
nnoremap <leader>ew :emenu Encoding.Write.<Tab>

# Меню проверки правописания.
nmenu SpellLang.nospell :setlocal nospell<CR>
nmenu SpellLang.ru-en   :setlocal spell spelllang=ru_ru,en_us<CR>
nmenu SpellLang.ru      :setlocal spell spelllang=ru_ru<CR>
nmenu SpellLang.en      :setlocal spell spelllang=en_us<CR>
nnoremap <leader>sp :emenu SpellLang.<Tab>

# Меню выбора метода фолдинга.
nmenu Folding.show_current :setlocal foldmethod?<CR>
nmenu Folding.manual       :setlocal foldmethod=manual<CR>
nmenu Folding.syntax       :setlocal foldmethod=syntax<CR>
nmenu Folding.indent       :setlocal foldmethod=indent<CR>
nmenu Folding.marker       :setlocal foldmethod=marker<CR>
nmenu Folding.expr         :setlocal foldmethod=expr<CR>
nmenu Folding.diff         :setlocal foldmethod=diff<CR>
nnoremap <leader>fd :emenu Folding.<Tab>

# Новая вкладка/закрыть вкладку.
nnoremap <silent><C-t> :tabnew<CR>
nnoremap <silent><C-c> :tabclose<CR>

# Удаление конечных пробелов и табуляций во всем буфере.
nnoremap <silent><leader>ss <ScriptCmd>editing.RemoveTrailingSpaces()<CR>
# Замена табуляций на пробелы во всем буфере.
nnoremap <silent><leader>ts <ScriptCmd>editing.ReplaceTabsWithSpaces()<CR>

# Удалить строку без входа в insert mode.
nnoremap 'dd S<Esc>
# Переход по окнам по <Tab>.
nnoremap <Tab> <C-w><C-w>

# Ввод диграфов (©, «, », Ψ, ...)
# Insert mode: <leader><Ctrl+k> и затем код символа.
# Список диграфов с кодами можно получить по команде :digraphs
# Узнать код символа под курсором (normal mode): ga
#    <Ψ> 936, Hex 03a8, Oct 1650, Digr Q*
#                                      |
#                                      это и есть вводимый код
inoremap <leader><C-k> <C-k>

# Команда '*'
# Normal mode: поиск слова под курсором без перехода на следующее совпадение.
nnoremap * *N
# Visual mode: поиск выделенного текста.
vnoremap * y :execute ":let @/=@\""<CR>:set hlsearch<CR>

# Копировать в локальный буфер и CLIPBOARD (регистры @* и @+) от позиции
# курсора и до конца строки.
nnoremap yY vg_"+yvg_"*y

# На первый символ строки, в конец строки.
nnoremap Y ^
nnoremap T g_
vnoremap Y ^
vnoremap T g_

# Отключаем перевод Vim в Background.
noremap <C-z> <Nop>

# Автозакрытие кавычек, скобок.
inoremap 'd ''<Esc>i
inoremap "d ""<Esc>i
inoremap (d ()<Esc>i
inoremap [d []<Esc>i
inoremap {d {}<Esc>i
inoremap <d <><Esc>i

# Добавление/удаление ';' в конце строки.
nnoremap <silent>;; <ScriptCmd>editing.ToggleSemicolonOnEndOfLine()<CR>

# Выделение слова пробелом.
nnoremap <Space> viw

# Отключаем команды, которые начинаются с 'q'.
#   q{symb} - запись макросов
#   q:      - открыть окно истории команд
nnoremap q <Nop>
vnoremap q <Nop>

# Ex mode (древний консольный режим Vi). Отключaем.
nnoremap Q <Nop>

### Location List
# Открытие/закрытие окна.
nnoremap <silent><F4> <ScriptCmd>locationlist.LocationListToggle()<CR>
# Следующая/предыдущая ошибка.
nnoremap <silent>]e <Esc>:lnext<CR>
nnoremap <silent>[e <Esc>:lprevious<CR>
# Quickfix List
nnoremap <silent>]q <Esc>:cnext<CR>
nnoremap <silent>[q <Esc>:cprevious<CR>

# В Insert Mode установить все символы слова перед курсором в UPPER CASE
inoremap <C-u> <Esc>bveUea

# Автодополнение путей, файлов в Insert Mode
inoremap <C-f> <C-X><C-f>

# Поиск двух пустых строк подряд.
nnoremap <leader>de /^\n\{2}<CR>

# декодирование выделенного base64 текста
# вывод результата в окне сообщений
vnoremap <leader>64 y :echo system('base64 --decode', @")<CR>
# замена кодированного текста на декодированный
vnoremap <leader>6p :'<,'>!base64 --decode<CR>

# ---  командная строка ---
# автодополнение по истории
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
# перемещение
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-f> <Right>
cnoremap <C-b> <Left>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>
cnoremap <C-d> <Del>
# очистить всю строку
cnoremap <C-u> <End><C-u>
# отключаем не нужное
cnoremap <C-q> <Nop>
cnoremap <C-k> <Nop>
cnoremap <C-y> <Nop>
cnoremap <C-l> <Nop>
cnoremap <C-^> <Nop>
