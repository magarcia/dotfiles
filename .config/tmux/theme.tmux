## =====================================
## ===    Appearence and status bar  ===
## ======================================

# general status bar settings
set -g status on
set-option -g status-position bottom
set-window-option -g xterm-keys on
set -g status-style fg=white
set -g window-status-style fg='#666666'
set -g window-status-current-style fg=red
set -g message-style fg=white,bright,bg=default
set -g status-left " "
set -g status-justify left
setw -g window-status-format         ' #{window_name} '
setw -g window-status-current-format ' #{window_name} '
set -g status-right " "
set -g pane-border-style fg='#666666'
set -g pane-active-border-style fg=white
