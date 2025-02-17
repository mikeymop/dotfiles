if [[ $OSTYPE == 'linux'* ]]; then
    source $HOME/.config/denv/zsh-linuxrc.zsh
fi

if [[ $OSTYPE == 'darwin'* ]]; then
    echo 'macOS'
fi
