vim9script

# ftplugin/changelog.vim

augroup Vim9ChangelogSettings
    autocmd! * <buffer>

    # Заменяем <Tab> пробелами. Применяем настройку, когда Vim полностью
    # откроет файл и применит все свои правила.
    autocmd SafeState <buffer> setlocal expandtab
augroup END
