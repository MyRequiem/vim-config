scriptencoding utf-8

" vint: -ProhibitAbbreviationOption

" compatible, cp - режим совместимости с Vi (не рекомендуется)
" Type: boolean
" Default: если найден ~/.vimrc (даже пустой), то off, иначе on
" set nocp

" cpoptions, cpo - список флагов для определения совместимости с Vi
" Type: string
" Default: aABceFs
" set cpo=aABceFs

" insertmode, im - использовать insert mode по умолчанию (при запуске Vim)
" Type: boolean
" Default: off
" set noim

" paste - переводит Vim в режим вставки. Опция полезна при использовании
" Vim в терминале, который не может различить напечатанный и вставленный текст.
" Автоматически устанавливается в 'off' при запуске GUI.
" Type: boolean
" Default: off
" set nopaste

" pastetoggle, pt - комбинация клавиш для вкл/откл режима вставки
" Type: string
" Default: ""
" set pt=

" runtimepath, rtp - список каталогов для поиска исполняемых файлов и плагинов
" Type: string
" Default: "$HOME/.vim,
"           $VIM/vimfiles,          " $VIM          == /usr/share/vim
"           $VIMRUNTIME,            " $VIMRUNTIME   == /usr/share/vim/vimXX
"           $VIM/vimfiles/after,
"           $HOME/.vim/after"
set rtp=$VIMRUNTIME
set rtp+=$VIM/vimfiles
set rtp+=$VIM/vimfiles/after
set rtp+=$HOME/.vim
set rtp+=$HOME/.vim/after

" packpath, pp - список каталогов для поиска пакетов плагинов
" Type: string
" Default: такое же значение, как у опции runtimepath по умолчанию
" set pp=$VIMRUNTIME
" set pp+=$VIM/vimfiles
" set pp+=$VIM/vimfiles/after
" set pp+=$HOME/.vim
" set pp+=$HOME/.vim/after

" helpfile, hf - пусть к основному файлу справки
" Type: string
" Default: /usr/share/vim/vimXX/doc/help.txt
" set hf=/usr/share/vim/vim81/doc/help.txt
