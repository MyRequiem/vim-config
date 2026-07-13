vim9script

# ftdetect/plain-text.vim

# Автоматическое определение файлов с именем __INFO__ как filetype=text.
autocmd BufNewFile,BufRead __INFO__ setlocal filetype=text
