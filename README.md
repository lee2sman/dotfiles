dotfiles
========

This is my dotfiles repo. I use [fishshelll](https://fishshell.com/) and the [Fisherman](https://github.com/fisherman/fisherman) plug-in manager.

# My PATH
In fish, you add to your PATH in `config.fish`, not bashrc or `.bash_profile.` My custom programs are in my bin folder, which has been added to my PATH inside config.fish. In general, I find it much easier to script in bash rather than learn fish's scripting syntax.

# Aliases
I have many fish functions, which is what fish calls its aliases. Check them out inside /fish/functions. Lots of scripts for playing music, markdown, opening various programs and a local server, some strange artware novelties, etc.

# VIM

## Vimrc
I have a minimal vimrc. This file is symlinked in my home folder.

## Neovim
In general, I'm using neovim on the commandline instead of vim, but still using my vimrc too. I set neovim (nvim) as the $EDITOR in the .fish_config file. I have a function that launches nvim when I type vim.

## Previewing Markdown in the Commandline
Check out my [md](fish/functions/md.fish) function that uses pandoc to render markdown preview in the commandline. 

## Atom for IDE and custom Markdown editor
In Atom I'm using the builtin markdown plugin as well as the vim-mode and ex-mode plugins.

