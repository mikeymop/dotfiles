# Add User specific environment to PATH
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
# from bindkey -M main
# bindkey '^[v' .describe-key-briefly can help you print them
bindkey "^[[1;5C" forward-word  # ctrl + ->
bindkey "^[[1;5D" backward-word # ctrl + <-
bindkey '^[[H' beginning-of-line # replace ctrl + a cursor start of line
bindkey '^[[F' end-of-line # replace ctrl + e cursor end of line

# Aliases
alias wlc="wl-copy"
alias cwl="code-insiders --enable-features=UseOzonePlatform --ozone-platform=wayland $1"

# Auto complete
autoload -Uz compinit && compinit
