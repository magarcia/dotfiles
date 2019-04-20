# This file is sourced on login shells only (responsible for setting up the
# initial environment)

set -gx PATH /bin
set PATH /sbin $PATH
set PATH /usr/bin $PATH
set PATH /usr/sbin $PATH
set PATH /usr/local/bin $PATH
set PATH /usr/local/sbin $PATH
set PATH ~/bin $PATH
set PATH ~/.local/bin $PATH

# Set locale
set -gx LC_ALL en_US.UTF-8
set -gx LANG en_US.UTF-8

# Configure fzf to use fd by default (fd respects .gitignore defaults)
set -gx FZF_DEFAULT_COMMAND 'fd --type f'

