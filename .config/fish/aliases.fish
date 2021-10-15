alias vim "nvim"
alias vi "nvim"
alias cat "ccat"
alias df "dfc"
alias top "htop"
alias dotfiles "yadm"
alias dots "yadm"
alias rm 'echo "rm is disabled, use trash or /bin/rm instead."'
alias :q "exit"
alias quit "exit"
alias ping "ping -c 5"
alias vimmaps "echo -e '\e[0m\e[1mVim\e[0m\e[2m' && grep '\"  ' $HOME/.config/nvim/settings/keymaps.vim | cut -c2- | sed -e 's/^[[:space:]]*//' | sed 's/ - /\&/g' | column -t -s'&' "
alias tmuxmaps "echo -e '\e[0m\e[1mTmux\e[0m\e[2m' && grep '^# <' $HOME/.config/tmux/tmux.conf | cut -c3- | sed 's/ - /\&/g' | sed 's/[<>]//g' | column -t -s'&'"
alias maps "vimmaps && echo && tmuxmaps"
#alias pass "gopass"
alias op "pass"
alias view "nvim -m"

function ls
   command gls --color=auto $argv
 end

if contains (uname) "Linux"
    # Copy & Paste
    alias pbcopy "xclip -selection clipboard -i"
    alias pbpaste "xclip -selection clipboard -o"

    # Apps
    alias open "xdg-open"
    alias chrome "chromium"
    alias terminal "urxvt"
    alias pdf-viewer "apvlv"
    alias fman "man --html firefox"

    # Pacman
    alias orphans "pacman -Qtd"

    # Job control
    alias mtop "ps --no-header -eo pmem,size,vsize,comm | sort -nr | sed 10q"
    alias ctop "ps --no-header -eo pcpu,comm | sort -nr | sed 10q"
end

function serve
    if test (count $argv) -ge 1
        if python -c 'import sys; sys.exit(sys.version_info[0] != 3)'
            /bin/sh -c "(cd $argv[1] && python -m http.server)"
        else
            /bin/sh -c "(cd $argv[1] && python -m SimpleHTTPServer)"
        end
    else
        python -m SimpleHTTPServer
    end
end

function timestamp
    python -c 'import time; print(int(time.time()))'
end

# Scloud
alias scl "scloud account login is24-commercial PowerUserAccess --write"
