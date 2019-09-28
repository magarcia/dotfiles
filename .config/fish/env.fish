# Set path
set_to_path /bin
set_to_path /sbin
set_to_path /usr/bin
set_to_path /usr/sbin
set_to_path /usr/local/bin
set_to_path /usr/local/sbin
set_to_path ~/.local/bin

# Set locale
set -gx LC_ALL en_US.UTF-8
set -gx LANG en_US.UTF-8

# Configure fzf to use fd by default (fd respects .gitignore defaults)
set -gx FZF_DEFAULT_COMMAND 'fd --type f'

set -gx EDITOR "vim"
