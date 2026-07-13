vim9script

# Импортируется в ../user-settings/mappings.vim

export def ToggleColumn81()
    &colorcolumn = &colorcolumn > '0' ? '0' : '81'
enddef
