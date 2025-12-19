# Void Install Notes

## Here's how I installed my system

1. Download [Void Linux base install glibc](https://voidlinux.org/download/).
2. [Prepare USB for install](https://docs.voidlinux.org/installation/live-images/prep.html)
  * identify USB via `fdisk -l`
  * unmount it: `umount /dev/sdX`
  * write iso to it: `dd bs=4M if=/path/to/void-live-ARCH-DATE-VARIANT.iso of=/dev/sdX`
  * flush device: `sync`
3. Plug into off laptop. Turn on, hold on F12 I think. Choose to boot into Void or wait 5 seconds for automatic load.
4. Login at command line with `root` and `voidlinux` (QWERTY)
5. Launch `void-installer` (QWERTY)
6. Go through the menu top to bottom. You can find other tutorials. For keyboard I use ANSI-dvorak, near the top.
7. connect to the network. I changed the void repo to fastly.
8. Keep going top to bottom in the install. If you use a premade iso with packages from voidbuilds, do local install. Otherwise, choose network install. Hostname, Locale, Timezone are self-explanatory. Root password. For user account pick a name (default is void), add a description and password.For bootloader, select the hard drive you're installing to (hint: it's not the USB drive that's stuck in). This time I went with UEFI.
9. [PARTITIONING](https://docs.voidlinux.org/installation/live-images/partitions.html): Launch cfdisk. If you need to wipe clean if already partitioned, you can launch `cfdisk -z`. For BIOS, choose label *mbr/dos*. For UEFI choose label *gpt*. Most recently I did UEFI. For BIOS, 2 partitions. For UEFI, 3 partitions. First partition I chose 500MB for efi, vfat. This gets mounted at /boot/efi. For root partition I chose the rest of the hard drive minus about 8GB. Finally, for the Swap I used the remaining 8GB. yes. Then 'write' then 'quit' cfdisk.
10. Choose groups. wheel is default. I added ssh, scanner, lp (printer), audio, video, storage, network,input, disk and removed floppy.
11. In the TUI choose *filesystems*. Highlight our efi system at `/boot/efi` and choose vfat, select SWAP and assign swap, and for root select mounting at `/` in ext4 and OK and write all this. Confirm `yes` you want to write. Navigate to "back" to exit this area.
12. Finally, install and wait a minute for it to complete and report success. Afterwards you can quit and reboot and pull out the USB and make sure the system turns on as normal now.

## Post-install configuration via these dotfiles

See the bash script. Most of this is automated.

1. Update xbps:  `sudo xbps-install -S`
2. Install `vpm`, a wrapper around xbps: `sudo xbps-install vpm`
3. Add other repos: `vpm install void-repo-nonfree`
4. Install `flatpak` and [add repo](https://flatpak.org/setup/Void%20Linux) (restart after): `flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo`
5. Install i3: `vpm install i3 i3status dmenu xorg xinit i3-gaps`. Anything else? 
6. Install all of your packages (see [void-installer](void-installer.sh) script): lxdm, pulseaudio, ulauncher, neovim, flatpak, git, kitty, nautilus, mpv, etc.
7. Copy dotfiles over (`~/.config` and `/etc`). (*this is the special sauce for my system*)
8. You can launch i3 with `startx`. There's a etc file for lxdm display manager that will autostart i3 on launch.
9. i3 confusingly assumes qwerty for setup, so when you run the wizard you should be in qwerty first. Choose your mod key, alt. You can switch back to dvorak after.
10. Install other stuff like fisher plugin, node.js/npm, etc.

## Additional notes

### pyradio

* switch to mpv instead of mplayer for radio streaming. mpv prevents stuttering better than mplayer. press `v` inside app to change players.

### NPM Packages

* [Download node.js and NPM](https://nodejs.org/en/download)

Global npm packages I use:

```js
npm install -g live-server moby readability-cli
```

* Moby is the thesaurus I use.
* live-server is my local server
* readability is a clone of firefox's reader mode 
