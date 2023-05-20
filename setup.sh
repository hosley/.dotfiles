#!/bin/sh

# Abort on error
set -e

xcode-select --install

mkdir ~/Pictures/Screenshots

echo "Checking if Homebrew is already installed...";

# Checks if Homebrew is installed
if test ! $(which brew); then
  echo "Installing Homebrew...";
  yes | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Homebrew is already installed...";
fi

echo "Updating and upgrading Homebrew..."; echo;
yes | brew doctor
yes | brew update
yes | brew upgrade

echo "Updating and upgrading Homebrew..."; echo;
yes | brew bundle

chsh -s /usr/local/bin/zsh

ln -s $PWD/.zshrc ~/.zshrc
ln -s $PWD/.gitconfig ~/.gitconfig

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ln -s $PWD/.oh-my-zsh/custom/themes/bureau.zsh-theme ~/.oh-my-zsh/custom/themes/bureau.zsh-theme
