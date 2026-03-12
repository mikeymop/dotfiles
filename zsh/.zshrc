if [[ $OSTYPE == 'linux'* ]]; then
    source $HOME/.config/denv/zshrc.linux.zsh
fi

if [[ $OSTYPE == 'darwin'* ]]; then
    echo 'macOS'
fi

# bun completions
[ -s "/home/mikey/.bun/_bun" ] && source "/home/mikey/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
