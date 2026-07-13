vim9script

syntax match DiffRemoved "^-.*"
syntax match DiffAdded   "^+.*"
syntax match DiffLine    "^@.*" contains=diffSubname

# удаленные строки
highlight! link DiffRemoved DarkRed
# добавленные строки
highlight! link DiffAdded   DarkGreen
# @@ -10,3 +10,3 @@
highlight! link DiffLine    Keyword
