#!/usr/bin/env bash

mkdir -p "$ZDOTDIR"

# Symmlink the current configuration files to their locations

ln -sf "$DOTFILES/zsh/.zshenv" "$HOME/.zshenv"
ln -sf "$DOTFILES/zsh/.zshrc" "$ZDOTDIR/.zshrc"

# ln -sf "$DOTFILES/zsh/dircolors" "$ZDOTDIR/dircolors"
