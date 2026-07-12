vim9script

export def ToggleColumn81()
    &colorcolumn = &colorcolumn > '0' ? '0' : '81'
enddef
