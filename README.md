dotfiles
========

This is my dotfiles repo to quickly clone and get started on any (?) new computer. I use [fishshelll](https://fishshell.com/) and the [fisher](https://github.com/jorgebucaran/fisher) package manager for Fish.

### Why Fish Shell?

- It looks great. Type ```fish_config``` to launch your web browser to select how your Terminal will look (fonts, colors, prompts, functions, etc).
- Autocomplete works nice and easy out of the box. Press right to accept any suggestion or else keep typing.
- The fisher manager makes it easy to add super nice prompts, the z jump command, etc.
- syntax highlighting is amazing. Makes it easy to understand what I'm typing/calling.
- I use vimkeys in Fish so I can use vim commands when composing commands at my prompt. zsh has this too, but Fish shows what mode you are in and autocomplete works well with it.

#### What doesn't work great in Fish shell?

- needs to be installed. Not a built-in shell on Mac, Windows but it does come on some Linux distros. In any case, it's super easy to install.
- Ocassionally you actually just want to use some simple Bash commands, particularly with wildcards like ```*``` or ```.``` and Bash has trouble knowing what to do. It'll yell at you. So then i just ```bash``` into a temp bash shell.
- Running two commands is not ```command1 && command2``` but instead ```command1; command2```. Fine.
- I still write Bash scripts instead of fish shell scripts. I add the bash shebang to the top so runs fine.
- Even though it's easy to install and makes the command line simple, I prefer to teach Bash to students first since they should know it when they jump on a new machine without Fish.

### Essential programs for me

- ```nvm``` the Neovim text editor. I use this every day.
- ```z``` directory jumping navigation. I use this instead of ```cd``` much of the time.
- ```tldr``` command line helper which lists how to use most command line software. 
- ```gcalcli``` which can display, edit and add to my google calendar.
- ```vimwiki``` which I use to create and edit a huge personal wiki file for notes, brainstorming, copying down info, listing movies to watch, books I've read, etc etc.
- ```pyradio``` which I use to stream music since I can't work, write, code or relax with it!
- ```brew``` package manager is pretty essential for finding new Terminal (and even GUI) apps for the Mac command line.

# My PATH
In fish, you add to your PATH in `config.fish`, not bashrc or `.bash_profile.` My custom programs are in my bin folder, which has been added to my PATH inside config.fish. In general, I find it much easier to script in bash rather than learn fish's scripting syntax.

# Aliases / Fish Functions
I have many fish functions, which is what fish calls its aliases. Check them out inside /fish/functions. Lots of basic scripts for playing music, markdown, opening various programs and a local server, some strange artware novelties, etc.

Examples:
- ```agenda``` - prints my weekly google calendar schedule, using gcalcli
- ```ambient``` - immediately plays Soma FM's [Deep Space One](https://somafm.com/deepspaceone/) channel using mplayer. ```q``` to quit.
- ```basic``` - drops into the [Chipmunk BASIC](http://www.nicholson.com/rhn/basic/) interpreter
- ```basinski``` - plays a looping William Basinski audio loop
- ```bsdgames``` - I can't remember all the games installed with bsdgames individually, so this just lists them for me. For example, ```adventure``` for Colossal Cave Adventure.
- ```buddha``` - plays random [FM3 Buddha machine](https://en.wikipedia.org/wiki/FM3) sounds.
- ```chillwave``` - plays Soma FM's [Fluid](https://somafm.com/fluid/) (*instrumental hip hop*) station using mplayer. ```q``` to quit.
- ```done``` - works with ```todo``` listed below. Essentially, moves the file to a DONE folder.
- ```drone``` - plays Soma FM's [Drone Zone](https://somafm.com/dronezone/) channel with mplayer. ```q``` to quit.
- ```dublab``` - plays LA web radio [Dublab](https://www.dublab.com/) with mplayer. ```q``` to quit.
- ```dunnet``` - launches the emacs easter egg science fiction text adventure game [Dunnet](https://en.wikipedia.org/wiki/Dunnet_(video_game))
- ```filecount``` - basically a one-liner that uses wordcount to count the number of files in your current folder.
- ```forecast``` - wrapper around wattr.in to get local forecast with ascii art display
- ```get_resolution``` - find current screen/projector resolution
- ```htmlpreview [filename]``` - follow with html filename. wrapper using lynx to display html file in terminal.
- ```hypnagogia``` - plays a particular episode of [Music For Programming](https://musicforprogramming.net/)
- ```journal``` - launches terminal input to append to a journal file. Complains if I don't write enough.
- ```lynx [url]``` - follow with url (e.g. nytimes.com) to launch page in lynx with good defaults
- ```macdown``` - just launches macdown because I was using it so often until I got MarkdownPreview in Neovim (see below)
- ```md [filename.md]``` - launches a markdown preview that looks pretty damn good in the Terminal. uses Pandoc and Lynx.
- ```news``` - displays NPR's Text-based news site and top headlines of the day with links to full articles. uses Lynx.
- ```ntsradio``` - launches NTS Radio studio 1 player using mplayer. ```q``` to quit.
- ```pixelmator``` - just launches the Pixelmator GUI app. I use this instead of Photoshop or GIMP on my Mac.
- ```plantsfm``` - uses mplayer to launch Data Garden's [Plants FM](http://www.plants.fm/) (I suggested this name to them :), live sounds from garden plants.
- ```pyradio``` - [pyradio](http://www.coderholic.com/pyradio/) is a great commandline radio station player but hard to track your station file when you update so this adds a link to my permanent station file.
- ```rm``` - this adds a **"are you sure?"** prompt when I try to delete anything in the Terminal. Can be over-ridden with ```rm -rf``` if I'm really surely surely sure.
- ```roguelikes``` - I play so many [roguelikes](https://www.reddit.com/r/roguelikes/) games I can't keep trick. This is a theoretically up-to-date list of what I've got / how to launch them.
- ```server``` - just a wrapper around Python's simpleHTTPServer so I can launch a live server in the current directory. Mostly I just use npm's [http-server](https://www.npmjs.com/package/http-server)
- ```silence``` - an implementation/performance of John Cage's [4'33"](https://en.wikipedia.org/wiki/4%E2%80%B233%E2%80%B3) in the Terminal
- ```todo taskname``` - creates a new file with the name of the task onto my desktop. Concept from Zach Holman's [dotfiles](https://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/)
- ```todolist``` - lists any files on desktop in the TODO folder. see above.
- ```vi``` - just launches neovim aka ```nvim```.
- ```vim``` - save as above.
- ```whitenoise``` - plays white noise with [sox](http://sox.sourceforge.net/).
- ```z [directory]``` - this *essential* function is actually installed through [fisher](https://github.com/jorgebucaran/fisher). It lets you type ```z homework``` and it auto ```cd``` jumps you into the proper folder.

## Neovim
I've switched to Neovim from Vim for text editing/coding/etc which I use like an IDE. Instead of a vimrc I have an init.vim file. It needs to be placed in ~/.config/nvim . I am using the Plug manager, which gets called in my init.vim file.

**I set neovim (nvim) as the $EDITOR in the .fish_config file. I have a function that launches nvim when I type vim.** 

Plug-ins
- [Goyo](https://github.com/junegunn/goyo.vim) - minimalist writing app
- [Vimwiki](https://vimwiki.github.io/) - a vim-based personal wiki / knowledge repository. I use this extensively but it's for internal use only on my own machine.
- [vim-sensible](https://www.vim.org/scripts/script.php?script_id=4391) - provides sensible basic defaults in vim.
- [Nerd-Tree](https://github.com/scrooloose/nerdtree) - make vim work more like an IDE with left-side file view.
- [Sonic Pi](https://github.com/dermusikman/sonicpi.vim) - used to run Sonic Pi from Vim instead of its own application
- [Markdown Preview](https://github.com/iamcco/markdown-preview.nvim) - Replaces Mou, Macdown, and Markdown preview in Atom. Runs a server and opens your browser to preview Markdown as you're writing it live. Scrolls the webpage for you too. 

## Previewing Markdown in the Commandline
Check out my [md](fish/functions/md.fish) function that uses Pandoc and Lynx to render markdown preview in the commandline. It allows vim-keys navigation.

## Atom for IDE and custom Markdown editor
In Atom I'm using the builtin markdown plugin as well as the vim-mode and ex-mode plugins.  

## TLDR

Can't remember how to do something in the terminal but know the name of the app? Then use **TLDR**.

Example: ```tldr ls```

Lists the most common uses for a command.

I contributed the file for how to use ```gcalcli```, the command-line client for google calendar. Run ```tldr gcalcli``` to see my handiwork.
