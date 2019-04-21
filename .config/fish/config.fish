# Enable Vi mode
#fish_vi_key_bindings
fish_default_key_bindings

# Dircolors
eval (gdircolors -c ~/.dir_colors )

# Install fisher
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

set SPACEFISH_USER_SHOW "needed"
set SPACEFISH_BATTERY_THRESHOLD "50"
set pipenv_fish_fancy yes

if status --is-login
    if test -e ~/.config/fish/env.fish
        source ~/.config/fish/env.fish
    end
end

if test -e ~/.config/fish/aliases.fish
    source ~/.config/fish/aliases.fish
end
if test -e ~/.config/fish/homebrew.fish
    source ~/.config/fish/homebrew.fish
end
if test -e ~/.config/fish/secrets.fish
    source ~/.config/fish/secrets.fish
end


