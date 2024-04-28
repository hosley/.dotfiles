#!/bin/sh

# Abort on error
set -e

ln -s -f $PWD/.zshrc ~/.zshrc
ln -s -f $PWD/.gitconfig ~/.gitconfig
ln -s -f $PWD/.gitignore ~/.gitignore
ln -s -f $PWD/.npmrc ~/.npmrc
ln -s -f $PWD/.oh-my-zsh/custom/themes/bureau.zsh-theme ~/.oh-my-zsh/custom/themes/bureau.zsh-theme
