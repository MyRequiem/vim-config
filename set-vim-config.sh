#!/bin/bash

CWD="$(pwd)"
SCRIPTNAME="$(basename "$0")"

if ! [ -f "${CWD}/${SCRIPTNAME}" ]; then
    echo "${SCRIPTNAME} not found in ${CWD}"
    exit 1
fi

cd "${HOME}" || exit 1

rm -rf .vim .vimrc
ln -s "${CWD}/.vim" .vim
ln -s "${CWD}/.vimrc" .vimrc

# от обычного пользователя устанавливаем плагины
if [[ "x$(id -u)" != "x0" ]]; then
    git clone https://github.com/VundleVim/Vundle.vim.git \
        ~/.vim/bundle/Vundle.vim
    vim ~/.vim/plugin-settings/Vundle.vim -c PluginInstall
fi
