# Void Install Notes

### Here's how I installed my system:

1. Download the unofficial i3 spin of Void linux from [voidbuilds.xyz](https://voidbuilds.xyz).
2. Write it to a usb drive with dd or balena-etcher.
3. Go to the computer I want to install void on. Plug in the usb. Start up and press F2 (or similar) to boot into the BIOS to make changes. Navigate to the boot section and confirm or change to boot into legacy BIOS, not UEFI, with secureboot disabled. Then choose to save and reboot, this time pressing F12 (or similar if your machine is different) to get to the startup items area. Choose to startup from the USB in BIOS.
4. If all goes well, the computer boots from Void off the USB stick now. Hit enter or wait 5 seconds and it launches.
5. I'm running i3 (as opposed to XFCE or another desktop manager) so the i3-setup-wizard runs at startup. I press down arrow and choose Alt for my mod key.
6. Now the screen is blank. Launch a terminal in i3 with Mod+Enter. 
7. I can't type qwerty so switch to qwerty by typing ```setxkbmap dvorak```.
8. Launch ```void-installer```.
9. Go through the menu top to bottom. You can find other tutorials. For keyboard I chose ANSI-dvorak but that appears to do nothing. 
10. Choose network and it'll test your connection. If you have ethernet plugged in it will confirm you're on the network. If you need wifi, switch to another window and open a terminal Mod+Enter. You can use nmcli. ```sudo nmcli dev wifi con "ssid name" password "the password"```. Switch back to the installer terminal window and check the connection works to proceed.
11. Keep going top to bottom in the install. Source should be local disk installer (not network) so we use the programs off the disk like i3. Hostname, Locale, Timezone are self-explanatory. Root password. For user account pick a name (default is void), add a description and password.For bootloader, select the hard drive you're installing to (hint: it's not the USB drive that's stuck in). You can say yes to wanting a graphic terminal for GRUB.
12. **PARTITIONING**: This messed me up before I understood what I was doing. Now it's not so bad. This part is confusing in the installer. Instead of using it (since it shows the old info), I actually switch to a different workspace and launch another terminal. Launch ```cfdisk -z``` to open the cfdisk program with no assumed previous partitioning. For BIOS, choose dos. Make two partitions. Make a new partition. First partition I made 18GB since my alienware has 12GB ram. I made it primary. I changed its type to Linux Swap (82 i think). I chose new partition again for the second (and final partition). I allowed it to use all remaining GB of the drive. I chose primary again and this time made the type Linux (83), which I think was the default. Now make the second partition /dev/sda2 bootable. Finally, choose write to write this to disk and then quit.
13. Switch back to the installer. Now run filesystems. Highlight /dev/sda1 our swap, select SWAP, press OK and enter to format it. Then move down and highlight /dev/sda2 our drive and select ext4 and OK and press enter. Tell the program to mount at / (root). Confirm yes you want to write. Navigate to "back" to exit this area.
14. Choose install and wait a few minutes. This took less than 3 minutes on my system. When done **choose back** to exit and then in a terminal type poweroff.
15. Yank out the USB. Then turn the computer back on and hopefully your new Void system turns on.

### After logon:

1. **The login screen is still in qwerty, oy. Type your user password in qwerty**. 
2. Setup i3 wizard again. Choose your mod key. For me, that's alt.
3. Launch a terminal Mod+Enter. First type ```setxkbmap dvorak``` for this session and then sudo su and start updating ```xbps-install -Su``` a few times and install vpm. Run the void-installer.sh going forward.
