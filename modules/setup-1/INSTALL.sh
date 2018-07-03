# INSTALL Script
# For Impact Byte Participants
# Course: Web Full Stack

# ------------------------------------------------------------------------------
# Linux Ubuntu

## Essential tools

sudo apt install zsh vim git git-lfs tig tree wget curl httpie imagemagick vlc

git lfs install
git lfs install system

# Chrome
# wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# Atom
# wget https://atom-installer.github.com/v1.25.0/atom-amd64.deb
sudo dpkg -i atom-amd64.deb

sudo apt install inkscape
sudo apt install gimp

# ------------------------------------------------------------------------------
# Mac OS

## Homebrew package manager

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install zsh vim git tig tree rename wget curl httpie

git lfs install
git lfs install system

brew cask install cakebrew
brew cask install google-chrome
brew cask install atom
brew cask install iterm2
brew cask install spectacle
brew cask install gimp

# ------------------------------------------------------------------------------
# Chrome extensions

# Markdown Preview Plus
# JSON Viewer
# Clear Session
# Vysor

# ------------------------------------------------------------------------------
# Atom packages

# Essentials
apm install atom-beautify emmet atom-ternjs indent-guide-improved color-picker file-icons

# JavaScript
apm install prettier linter linter-ui-default intentions busy-signal

# Git
# https://github.atom.io
apm install git-plus git-control git-time-machine git-history git-blame
context-git simple-git split-diff merge-conflicts

# Teletype
# For real time collaboration editing
# https://teletype.atom.io
apm install teletype

# Atom IDE
# Only if needed
# https://ide.atom.io
apm install atom-ide-ui ide-typescript ide-flowtype

# ------------------------------------------------------------------------------
# Node.js

# nvm
# Follow the README in repo
# https://github.com/creationix/nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

nvm install v9

# ------------------------------------------------------------------------------
# Database

# MySQL/MariaDB
