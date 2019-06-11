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

set pure_symbol_prompt "\$"
set pure_color_primary (set_color green)
set pipenv_fish_fancy yes
set fish_emoji_width 2
set fish_ambiguous_width 2


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


