#!/bin/bash
set -e
mkdir -p "$HOME/.local/bin"
if [ ! -x "$HOME/.local/bin/mise" ] || ! file -b "$HOME/.local/bin/mise" | grep -q ELF; then
    rm -f "$HOME/.local/bin/mise"
    curl https://mise.run | MISE_INSTALL_PATH="$HOME/.local/bin/mise" sh
fi