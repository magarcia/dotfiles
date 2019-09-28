#!/usr/bin/env bash

echo -e "\tCreating symbolic links"
if [ ! . -ef ~/.vim ]; then
    ln -nfs ~/.config/nvim ~/.vim
fi

if [ ! . -ef ~/.vimrc ]; then
    ln -nfs ~/.config/nvim/init.vim ~/.vimrc
fi

echo -e "\tCreating backup files folder"
mkdir -p ~/.local/share/nvim/backup

echo -e "\tInstalling plugins"
vim '+PlugUpdate' '+PlugClean!' '+PlugUpdate' ':CocInstall coc-json coc-css coc-tsserver coc-html coc-yaml coc-python coc-highlight coc-snippets' '+qall'

sudo chown -R $(whoami) $HOME/.config/coc/
