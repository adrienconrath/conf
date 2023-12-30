#!/bin/bash

install() {
    for file in vimrc zshrc; do
        target="$HOME/.$file"
        source="./$file"
        if [ -f "$target" ]; then
            mv "$target" "${target}-old"
        fi
        ln -s "$(realpath "$source")" "$target"
    done

    if [ -d "./vim" ]; then
        target="$HOME/.vim"
        if [ -d "$target" ]; then
            mv "$target" "${target}-old"
        fi
        ln -s "$(realpath ./vim)" "$target"
    fi

    source ~/.zshrc
}

uninstall() {
    for file in vimrc zshrc; do
        target="$HOME/.$file"
        [ -L "$target" ] && rm "$target"
        [ -f "${target}-old" ] && mv "${target}-old" "$target"
    done

    target="$HOME/.vim"
    [ -L "$target" ] && rm "$target"
    [ -d "${target}-old" ] && mv "${target}-old" "$target"

    source ~/.zshrc
}

case "$1" in
    install)
        install
        ;;
    uninstall)
        uninstall
        ;;
    *)
        echo "Usage: $0 {install|uninstall}"
        exit 1
        ;;
esac

