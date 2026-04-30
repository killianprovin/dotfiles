#!/bin/bash
set -e
mkdir -p "$HOME/.local/bin"
if [ ! -x "$HOME/.local/bin/starship" ] || ! file -b "$HOME/.local/bin/starship" | grep -q ELF; then
    rm -f "$HOME/.local/bin/starship"
    curl -sS https://starship.rs/install.sh | sh -s -- --bin-dir "$HOME/.local/bin" --yes
fi