# .bashrc
# source $HOME/.config/term/cloud.sh

alias wlc="wl-copy"

# Source global definitions
# if [ -f /etc/bashrc ]; then
#     . /etc/bashrc
# fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# Aliases
#alias code='code --enable-features=UseOzonePlatform,WaylandWindowDecorations,WebRTCPipeWireCapturer'
alias vim='nvim'
alias cwl="code-insiders --enable-features=UseOzonePlatform --ozone-platform=wayland $1"

# Prompt Customization
# Shorten bash prompt
PROMPT_DIRTRIM=3
# . "$HOME/.cargo/env"
eval "$(oh-my-posh init bash --config $HOME/.config/omp/linux.omp.toml)"

### Override OS color prompt prevention
case "$TERM" in
    xterm-color|*-256color|*ghostty) color_prompt=yes;;
esac

# fnm
export PATH="/home/mikey/.local/share/fnm:$PATH"
eval "$(fnm env --use-on-cd)"

# pnpm
export PNPM_HOME="/home/mikey/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
# alias code='codium --enable-features=UseOzonePlatform --ozone-platform=wayland'

# Wasmer
# export WASMER_DIR="/home/mikey/.wasmer"
# [ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"

# export WASMTIME_HOME="$HOME/.config/wasmtime/"

# function lastdmesg() {
#   journalctl -o short-precise -k -b -1
# }

# export PATH="$PATH:$WASMTIME_HOME/bin"
