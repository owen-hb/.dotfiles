#!/bin/bash
# Shebang to specify this script is to be run with Bash

# Remove the .nanorc file in the home directory
if [ -f "$HOME/.nanorc" ]; then
    rm "$HOME/.nanorc"
fi

# Remove the line sourcing bashrc_custom from .bashrc
sed -i '/source ~\/.dotfiles\/etc\/bashrc_custom/d' "$HOME/.bashrc"

# Remove the .TRASH directory in the home directory
if [ -d "$HOME/.TRASH" ]; then
    rm -rf "$HOME/.TRASH"
fi

