#!/bin/bash

# Make sure we’re using the latest Homebrew
brew update

# Install command-line tools using Homebrew
xcode-select --install

# Upgrade any already-installed formulae
brew upgrade

# Install software
brew install git
brew install imagemagick
brew install mplayer
brew install node #also installs node
brew install ffmpeg --with-libvpx
brew install fish
brew install nethack
brew install pandoc
brew install w3m
brew install wget
brew install neovim/neovim/neovim
brew install poppler

# Remove outdated versions from cellar
brew cleanup
