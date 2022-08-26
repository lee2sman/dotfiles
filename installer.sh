#!/bin/sh

echo "Updating packages list" \n
sudo apt update

echo "Upgrading packages" \n
sudo apt upgrade

# Installing my programs
echo "Installing my default programs" \n
sudo apt install fish neovim git mplayer sox w3m links2 busybox cowsay espeak dialog ffmpeg figlet toilet gforth krita neofetch rhythmbox zenity bat ruby

# Switching default shell to fish
echo "Changing default shell to fish" \n
chsh -s $(which fish)

echo "Default shell changed to fish. Logout and back in or restart for changes to take effect." \n

# Copy config settings 
echo "Copying over my config files" \n
sudo cp -r config/* ~/.config/

echo "Next steps: install pyradio node.js/npm manually"
