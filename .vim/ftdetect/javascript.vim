vim9script

# ftdetect/javascript.vim

# Регистрируем файлы *_encode.user.js как обычный текст без переноса строк.
autocmd BufNewFile,BufRead *_encode.user.js setlocal filetype=text nowrap
