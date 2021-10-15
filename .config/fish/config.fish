# Enable Vi mode
#fish_vi_key_bindings
fish_default_key_bindings

# Install fisher
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

set pipenv_fish_fancy yes
set fish_emoji_width 2
set fish_ambiguous_width 2

set -U fish_greeting

load_fish_file ~/.config/fish/env.fish
load_fish_file ~/.config/fish/abbreviations.fish
load_fish_file ~/.config/fish/aliases.fish
load_fish_file ~/.config/fish/homebrew.fish
load_fish_file ~/.config/fish/scout.fish
