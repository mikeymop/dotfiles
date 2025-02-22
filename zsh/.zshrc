if [[ $OSTYPE == 'linux'* ]]; then
    source $HOME/.config/denv/zshrc.linux.zsh
fi

if [[ $OSTYPE == 'darwin'* ]]; then
    echo 'macOS'
fi
