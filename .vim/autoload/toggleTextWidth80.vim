vim9script

export def ToggleTextWidth80()
    &l:textwidth = &l:textwidth > 0 ? 0 : 80
    echo $"textwidth: {&l:textwidth}"
enddef
