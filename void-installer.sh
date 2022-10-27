#!/bin/sh

# Switches keyboard to dvorak for this session
setxkbmap dvorak

# reminder note!
echo "Set wifi up using nmcli if needed..." \n

echo "Updating packages list." \n
sudo xbps-install -Su

echo "Do it several times to update xbps as well..." \n
sudo xbps-install -Su

echo "Downloading vpm wrapper around xbps..." \n
sudo xbps-install vpm

echo "Adding non-free and muli-lib repos..."
sudo vpm install void-repo-nonfree void-repo-multilib-nonfree

# Installing my programs
echo "Installing my default program (will fail and stop installing if a program is not found)..." \n
sudo vpm install fish-shell neovim git mplayer pandoc sox w3m busybox cowsay espeak dialog ffmpeg figlet toilet gforth krita neofetch rhythmbox zenity bat ruby nnn curl ImageMagick lua luarocks pyradio tldr vlc yt-dlp love amfora lagrange firefox terminology

# Switching default shell to fish
echo "Changing default shell to fish..." \n
chsh -s $(which fish)

echo "Default shell changed to fish. Logout and back in or restart for changes to take effect..." \n

# Copy config settings 
echo "Copying over my config files..." \n
sudo cp -r config/* ~/.config/

# Fixing keyboard so it starts up dvorak
echo "Adding dvorak keyboard startup file to X.org..." \n
sudo mkdir /etc/X11/xorg.conf.d
sudo cp /etc/X11/xorg.conf.d/dvorak /etc/X11/xorg.conf.d

# install fisherman plugin manager just for z
echo "Installing fisherman plugin manager..."
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
fisher install jethrokuan/z

echo "You should now shutdown and restart your computer for changes to take full effect."
