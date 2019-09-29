#!/usr/bin/env bash

if [ ! -e ~/.tmux ]; then
    ln -nfs $HOME/.config/tmux ~/.tmux;
fi
if [ ! -e ~/.tmux.conf ]; then
  ln -nfs "$HOME/.config/tmux/tmux.conf" ~/.tmux.conf
fi
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
~/.config/tmux/plugins/tpm/bin/install_plugins
