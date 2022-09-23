#!/bin/sh

# Part 1 

# Updates apk package tool
echo "Updating alpine apk"
apk add --upgrade apk-tools

echo "Updating all packages"
apk upgrade --available

# Uncomment following lines to restart services after upgrading
#echo "Rebooting to restart any updated services"
#sync
#reboot

# Install my packages

echo "Installing my default programs" \n

# Basic man pages and such
apk add mandoc man-pages mandoc-apropos less less-doc

# Basic programs
apk add bash bash-doc fish fish-doc neovim neovim-doc git lua lua-doc neofetch neofetch-doc nnn nnn-doc 

# Change default shell
echo "Changing default shell from ash to fish" \n

# Copy config settings 
echo "Copying over my config files" \n
sudo cp -r config/* ~/.config/

echo "Reboot recommended"

