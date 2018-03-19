# Linux Ubuntu

## Install essential tools

sudo apt install zsh vim git tig tree curl wget httpie imagemagick vlc

## Install browser

# wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# wget https://atom-installer.github.com/v1.25.0/atom-amd64.deb?s=1521055093&ext=.deb
sudo dpkg -i atom-amd64.deb

# ------------------------------------------------------------------------------

# Mac OS

## Install Homebrew package manager

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install zsh vim git tig tree curl wget httpie

brew cask install google-chrome
brew cask install atom

# ------------------------------------------------------------------------------

# Install browser extensions

# Clear Session
# Markdown preview plus
# JSON Viewer
# Vysor

# ------------------------------------------------------------------------------

# Install Atom packages

# Essentials
apm install beautify emmet ternjs indent-guide-improved color-picker file-icons

# Git
# https://github.atom.io
apm install git-plus git-control git-time-machine git-history git-blame
context-git simple-git split-diff merge-conflicts

# Teletype
# https://teletype.atom.io
apm install teletype floobits

# Atom IDE
# https://ide.atom.io
apm install atom-ide-ui ide-typescript ide-flowtype

# ------------------------------------------------------------------------------

# Install Node.js

# https://github.com/creationix/nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

# ------------------------------------------------------------------------------

# Install Database
