vim9script

if exists('b:current_syntax')
    finish
endif

syntax match qfFileName  "^[^|]*"  nextgroup=qfSeparator
syntax match qfSeparator "|"       nextgroup=qfLineNr contained
syntax match qfLineNr    "[^|]*"   contained contains=qfError,qfWarning
syntax match qfError     "error"   contained
syntax match qfWarning   "warning" contained

highlight! link qfFileName   SignColumn
highlight! link qfSeparator  Normal
highlight! link qfLineNr     DarkGreen
highlight! link qfError      SpecialKey
highlight! link qfWarning    NonText
highlight! link QuickFixLine ColorColumn

b:current_syntax = 'qf'
