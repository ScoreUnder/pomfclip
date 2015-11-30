#!/bin/sh
# Crappy install script

install_to=$1
if [ -z "$install_to" ]; then
    path_has() {
        case ":$PATH:" in
            *:"$1":*) return 0;;
            *) return 1;;
        esac
    }

    try_path() {
        path_has "$1" && [ -w "$1" ] &&
            install_to="$1"
    }

    try_path /usr/local/bin || try_path "$HOME/bin" || try_path "$HOME/.bin"
fi

if [ -n "$install_to" -a -d "$install_to" ]; then
    install -v -t "$install_to" pomfclip pomfload uguuload upload
else
    echo "Nowhere to install to!" >&2
    exit 1
fi
