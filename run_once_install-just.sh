#!/bin/bash
set -e
mkdir -p "$HOME/.local/bin"
if [ ! -x "$HOME/.local/bin/just" ] || ! file -b "$HOME/.local/bin/just" | grep -q ELF; then
    rm -f "$HOME/.local/bin/just"
    curl --proto '=https' --tlsv1.2 -sSf https://just.systems/install.sh \
        | bash -s -- --to "$HOME/.local/bin"
fi