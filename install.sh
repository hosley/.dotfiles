#!/bin/sh

# Abort on error
set -e

mkdir ~/Pictures/Screenshots
mkdir ~/Code
mkdir ~/.nvm

sudo -v

echo "Checking if Homebrew is already installed...";

# Checks if Homebrew is installed
if test ! $(which brew); then
  echo "Installing Homebrew...";
  yes | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew is already installed...";
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Updating and upgrading Homebrew..."; echo;
yes | brew doctor
yes | brew update
yes | brew upgrade

echo "Updating and upgrading Homebrew..."; echo;
yes | brew bundle
