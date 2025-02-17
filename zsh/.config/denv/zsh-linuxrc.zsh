# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Shell Plugins
# enable oh-my-posh using config
eval "$(oh-my-posh init zsh --config $HOME/.config/omp/linux.omp.toml)"

# Dev environment
source $HOME/.config/denv/zsh-dev.zsh

# Keymaps
bindkey "^[[1;5C" forward-word  # ctrl + ->
bindkey "^[[1;5D" backward-word # ctrl + <-

# Aliases
alias wlc="wl-copy"
alias cwl="code-insiders --enable-features=UseOzonePlatform --ozone-platform=wayland $1"

# Auto complete
autoload -Uz compinit && compinit
