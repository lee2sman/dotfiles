#!/bin/sh

# Switches keyboard to dvorak for this session
setxkbmap dvorak

# reminder note!
echo "Set wifi up using nmcli if needed..." \n
sleep 1

echo "Updating packages list." \n
sudo xbps-install -Su

echo "Do it several times to update xbps as well..." \n
sudo xbps-install -Su

echo "Downloading vpm wrapper around xbps..." \n
sudo xbps-install vpm

echo "Adding non-free and muli-lib repos..." \n
sudo vpm install void-repo-nonfree void-repo-multilib-nonfree

# Installing my programs
echo "Installing my default program (will fail and stop installing if a program is not found)..." \n
sudo vpm install fish-shell neovim git mplayer pandoc sox w3m busybox cowsay espeak dialog ffmpeg figlet mpv toilet gforth krita neofetch rhythmbox zenity bat ruby fff nnn curl ImageMagick lua luarocks pyradio tldr vlc yt-dlp love amfora lagrange firefox terminology ulauncher rsync xclip evince ssr chafa offpunk steam xmirror

Echo "Installing font awesome 6 font icons for use by polybar" \n
sudo vpm install font-awesome6

# Switching default shell to fish
echo "Changing default shell to fish..." \n
chsh -s $(which fish)

# Change default xterm font size to 14 monospace
cp .Xresources ~/.Xresources

echo "Default shell changed to fish. Logout and back in or restart for changes to take effect..." \n

# Copy config settings - this is my special sauce
echo "Copying over my config files..." \n
sudo cp -r config/* ~/.config/

# Enable dvorak on startup
# Enable tap-to-click on startup
echo "Adding dvorak keyboard and tap-to-click startup files to X.org..." \n
sudo mkdir /etc/X11/xorg.conf.d
sudo cp etc/X11/xorg.conf.d/*.conf /etc/X11/xorg.conf.d/

# install fisherman plugin manager to add z directory jumping
echo "Installing fisherman plugin manager..."
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
fisher install jethrokuan/z

echo "You should now shutdown and restart your computer for changes to take full effect."
