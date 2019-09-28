#!/usr/bin/env bash

if [ -e "$HOME/Library/Application\ Support/Code/User/" ]; then
    ln -s $HOME/.config/vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json
    ln -s $HOME/.config/vscode/keybindings.json $HOME/Library/Application\ Support/Code/User/keybindings.json
    ln -s $HOME/.config/vscode/snippets/ $HOME/Library/Application\ Support/Code/User/snippets/
fi

# Install extensions
# code --list-extensions > ~/.config/vscode/extensions
while read EXTENSION; do
  code --install-extension $EXTENSION
done < $HOME/.config/vscode/extensions