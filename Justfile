os := "$(uname)"
# stow -d "$(PWD)" -t $HOME $package; \

default:
    @just --list
    @echo use "." to install all packages

install package:
    @echo "Detected {{os}}"
    @echo "Installing {{package}} config for {{os}}"
    @set export
    #!/usr/bin/env bash

    @if $(test "{{os}}" = "Linux"); then \
        stow -v -R -d $PWD -t $HOME --ignore=".*.mac.*" {{package}}; \
    elif $(test "{{os}}" = "Darwin"); then \
        echo "Hello Mac"; \
    else \
        echo "{{os}} is unsupported"; \
    fi
