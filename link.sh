#!/bin/sh

# Abort on error
set -e

ln -s $PWD/.zshrc ~/.zshrc
ln -s $PWD/.gitconfig ~/.gitconfig
ln -s $PWD/.gitignore ~/.gitignore
ln -s $PWD/.npmrc ~/.npmrc
ln -s $PWD/.oh-my-zsh/custom/themes/bureau.zsh-theme ~/.oh-my-zsh/custom/themes/bureau.zsh-theme
