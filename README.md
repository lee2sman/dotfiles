dotfiles
========

This is my dotfiles repo to quickly clone and get started on a new computer and to hold my settings in case I lose anything or my computer dies.

As of December 2019 I have switched to Linux (Ubuntu) as my regular OS. [Goodbye Mac](https://opensource.com/article/20/3/mac-linux). My Mac dotfiles can be found in the main branch. Linux dotfiles (more minimal) in the Linux branch.

I use [fishshell](https://fishshell.com/) instead of Bash.

### Why Fish Shell?

- Autocomplete is on by default and works really well, using the manual pages and your previous commands to make suggestions. Press right to accept any suggestion or else keep typing.
- It looks great. Type ```fish_config``` to launch your web browser to select how your Terminal will look (fonts, colors, prompts, functions, etc). *Update: I'm using the Terminology terminal which overrides some of this and has an easy theme selector as well*.
- I'm using the fisher plugin manager. Probably unnecessary. You can easily install complex beautiful prompts and the reason I installed it was to be able to add the incredible [z](https://github.com/jethrokuan/z) jump command, etc. 
- syntax highlighting is amazing. This makes it easy to understand what I'm typing/calling.
- I use vimkeys in Fish so I can use vim commands when composing commands at my prompt. zsh has this too, but Fish shows what mode you are in and autocomplete works well with it.

#### What doesn't work great in Fish shell?

- Fish usually needs to be installed. It's not a built-in shell on Mac, Windows but it does come on some Linux distros. In any case, it's super easy to [install](https://fishshell.com/).
- Ocassionally you actually just want to use some simple Bash commands, particularly with wildcards like ```*``` or ```.``` and Bash has trouble knowing what to do. It'll yell at you. So then i just type ```bash``` to get into a temp bash shell, and then ```exit``` when I'm done.
- Running two commands is not ```command1 && command2``` but instead ```command1; command2```. Fine.
- I still write Bash scripts instead of fish shell scripts. I add the bash shebang to the top so runs fine.
- Even though it's easy to install and makes the command line simple, I prefer to teach Bash to students first since they should know it when they jump on a new machine without Fish.

### Essential programs for me

Keep in mind I'm an artist, not a developer. I write text most days, work on creative coding and interactive and web-based art, build sites, create tools, read, make music, etc.

- ```nvim``` the Neovim text editor. I use this every day.
- ```z``` directory jumping navigation. I use this instead of ```cd``` much of the time. [info](https://github.com/jethrokuan/z)
- ```tldr``` command line helper which lists how to use most command line software. 
- ```gcalcli``` which can display, edit and add to my google calendar.
- ```vimwiki``` which I use to create and edit a huge personal wiki file for notes, brainstorming, copying down info, listing movies to watch, books I've read, etc etc.
- ```pyradio``` which I use to stream music since I can't work, write, code or relax with it!
- ~~```brew``` package manager is pretty essential for finding new Terminal (and even GUI) apps for the Mac command line.~~
- ```apt``` package manager for Ubuntu.
- ```git``` version control system. I use both GitHub and [Keybase's encrypted Git](https://keybase.io/blog/encrypted-git-for-everyone).

# My PATH
In fish, you add to your PATH in `config.fish`, not bashrc or `.bash_profile.` My custom programs are in my bin folder, which has been added to my PATH inside config.fish. In general, I find it much easier to script in bash rather than learn fish's scripting syntax.

# Aliases / Fish Functions
I have many fish functions, which is what fish calls its aliases. Check them out inside /fish/functions. Lots of basic scripts for playing music, markdown, opening various programs and a local server, some strange artware novelties, etc.

*Update: I used to have a ton of functions for launching radio stations, rendering text, etc. Have simplified and eliminated most of these. Check my main branch under fish/functions to see those*.

Examples:
- ```agenda``` - prints my weekly google calendar schedule, using gcalcli
- ```bsdgames``` - I can't remember all the games installed with bsdgames individually, so this just lists them for me. For example, ```adventure``` for Colossal Cave Adventure.
- ```filecount``` - basically a one-liner that uses wordcount to count the number of files in your current folder.
- ```fisher``` - installed when you install [fisher](https://github.com/jorgebucaran/fisher) Fish package manager. ```fisher add [packagename]```. Find packages [here](https://github.com/jorgebucaran/awesome-fish). ```fisher ls``` to list installed.
- ```gcalcli``` - simplifies the gcalcli command so I don't have to specify my default calendar and *quick-add*, which I always use
- ```open``` - mimics the Mac open command. Essentially just an alias to Linux equivalent ```xdg-open```.
- ```rm``` - this adds a **"are you sure?"** prompt when I try to delete anything in the Terminal. Can be over-ridden with ```rm -rf``` if I'm really surely surely sure.
- ```vim``` - remap so instead launches Neovim.
- ```z [directory]``` - this *essential* function is actually installed through [fisher](https://github.com/jorgebucaran/fisher). It lets you type ```z homework``` and it auto ```cd``` jumps you into the proper folder.

## Neovim
I've switched to Neovim from Vim for text editing/coding/etc which I use like an IDE. Instead of a vimrc I have an init.vim file. It needs to be placed in ~/.config/nvim . I am using the Plug manager, which gets called in my init.vim file.

**I set neovim (nvim) as the $EDITOR in the .fish_config file. I have a function that launches nvim when I type vim.** 

I never learned tmux or properly managing buffers in Vim/Neovim. Instead I open new tabs in my terminal, switch between them with the Alt keys, and can copy and paste between them using the normal y/ank and p/aste because of a setting I added to my Neovim config. You can take a look.

Plug-ins
- [Goyo](https://github.com/junegunn/goyo.vim) - minimalist writing app
- [Vimwiki](https://vimwiki.github.io/) - a vim-based personal wiki / knowledge repository. I use this extensively but it's for internal use only on my own machine.
- [vim-sensible](https://www.vim.org/scripts/script.php?script_id=4391) - provides sensible basic defaults in vim.
- [Nerd-Tree](https://github.com/scrooloose/nerdtree) - make vim work more like an IDE with left-side file view.
- [Sonic Pi](https://github.com/dermusikman/sonicpi.vim) - used to run Sonic Pi from Vim instead of its own application
- ~~[Markdown Preview](https://github.com/iamcco/markdown-preview.nvim) - Replaces Mou, Macdown, and Markdown preview in Atom. Runs a server and opens your browser to preview Markdown as you're writing it live. Scrolls the webpage for you too.~~ *Update: Did not work on my Ubuntu machine.*

## Previewing Markdown in the Commandline
~~Check out my [md](fish/functions/md.fish) function that uses Pandoc and Lynx to render markdown preview in the commandline. It allows vim-keys navigation.~~ *Update: I replaced this with [mdless](https://brettterpstra.com/projects/mdless/) utility on my Linux branch of this dotfiles repo.*

## Atom for IDE and custom Markdown editor
In Atom I'm using the builtin markdown plugin as well as the vim-mode and ex-mode plugins.  

## TLDR

Can't remember how to do something in the terminal but know the name of the app? Then use **TLDR**.

Example: ```tldr ls```

Lists the most common uses for a command.

I contributed the file for how to use ```gcalcli```, the command-line client for google calendar. Run ```tldr gcalcli``` to see my handiwork.

## Images in the Terminology Terminal

Terminology terminal lets you view image files in the browser.

- ```tyls``` - List/display all files in the current directory and show thumbnail image
- ```tycat filename``` - Display filename in the Terminal. You can even do ```tycat *.jpg``` for example. 

