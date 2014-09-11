#!/bin/sh
# Crappy install script

path_has() {
    case ":$PATH:" in
        *:"$1":*) return 0;;
        *) return 1;;
    esac
}

install_to=""
try_path() {
    path_has "$1" && [ -w "$1" ] &&
        install_to="$1"
}

try_path /usr/local/bin || try_path "$HOME/bin" || try_path "$HOME/.bin"

if [ -n "$install_to" -a -d "$install_to" ]; then
    install -v -t "$install_to" pomfclip pomfload
else
    echo "Nowhere to install to!" >&2
fi
