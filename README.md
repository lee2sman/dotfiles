dotfiles
========

This is my dotfiles repo. I use fishshell!

# My PATH
In fish, you add to your PATH in `config.fish`, not bashrc or `.bash_profile.` My custom scripts are in my bin folder, which has been added to my PATH inside config.fish. In general, I find it much easier to script in bash, in combo with fish shell.

# Aliases
I am proud (!) of my fish functions, which is what fish calls its aliases. Check them out inside /fish/functions. Lots of scripts for playing music, markdown, opening various programs and a local server, some strange artware novelties, etc.

# Vimrc
I have a minimal vimrc. This file is symlinked in my home folder.

# TODO
* Make alternate versions for my various linux machines
* Create an installer to execute the makesymlinks.sh and installer scripts for brew and cask (and later wget, pacman, etc) depending on what machine I run it on
