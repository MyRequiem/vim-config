vim9script

# ftdetect/configs.vim

# Автоматическое определение файлов с именем config как filetype=conf.
autocmd BufNewFile,BufRead config setlocal filetype=conf
