vim9script

# Импортируется в ../user-settings/mappings.vim

export def ToggleTextWidth80()
    &textwidth = &textwidth > 0 ? 0 : 80
    echo $"textwidth: {&textwidth}"
enddef
