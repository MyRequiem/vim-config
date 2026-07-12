vim9script

export def ToggleTextWidth80()
    &textwidth = &textwidth > 0 ? 0 : 80
    echo $"textwidth: {&textwidth}"
enddef
