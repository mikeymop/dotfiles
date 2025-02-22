# Dotfiles

A collection of my dotfiles and environment configurations.
They are stored in the form of [stow](https://www.gnu.org/software/stow/) packages.

## Usage

If you have `just` installed
```shell
just install zsh # install the zsh package
```

```shell
stow *   # recreate all package dotfiles
stow zsh # recreate only zsh package dotfiles

# Apply "zsh" package within `~/dotfiles` onto ~/
stow -d ~/dotfiles -t ~/ zsh
```

## Map

```shell
.
├── bash
│   └── .bashrc
├── ghostty
│   └── .config
│       └── ghostty
│           ├── config
│           └── gnome-config
├── omp
│   └── .config
│       └── omp
│           ├── linux.default.omp.toml
│           └── linux.omp.toml
├── zed
│   └── .config
│       └── zed
│           ├── settings.json
│           └── themes
└── zsh
    ├── .config
    │   └── denv
    │       └── zsh-linuxrc.zsh
    └── .zshrc
```

# More info

If you want more information on using `stow`. This [article](https://typecraft.dev/tutorial/never-lose-your-configs-again) provides a brief explanation.
