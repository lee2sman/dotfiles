dotfiles
========

This is my dotfiles repo to quickly clone and get started on a new computer and to hold my settings in case I lose anything or my computer dies. There is void-installer.sh (or installer.sh in other branches) to simplify the install process and make it less manual.

## Environment

* [Void Linux](https://voidlinux.org) distro - I now run Void on multiple machines, but I have Ubuntu dotfiles, Alpine, old Mac dotfiles and others on alternate branches of this repo
* i3 window manager
* [Fish shell](https://fishshell.com/) 
* [Dvorak](https://en.wikipedia.org/wiki/Dvorak_keyboard_layout) keyboard layout
* [Neovim](https://neovim.io) editor and vim-keys wherever possible (such as in the fish shell repl)
* [ulauncher](https://ulauncher.io) for app launching
* [Terminology](https://www.enlightenment.org/about-terminology.md) terminal (actually I seem to switch Terminal preferences every few months. Right now i'm using kitty. Previously I was using sakura.)
* [aerc](https://aerc-mail.org) (cli) or [Thunderbird](https://www.thunderbird.net) (gui) for email
* Firefox browser (http) and amfora client (gemini)
* lxdm display manager

![i3 setup Screenshot](i3.jpg)  
*Void linux + i3. on left: neovim in Terminology. neofetch in kitty. on right, Falkon browser*  

![Screenshot](screenshot.png)  
*Screenshot of Terminology terminal, showing this document being edited, with :Goyo focuswriter on*

### Fish Shell notes

* Autocomplete on by default. Tab/press right to accept.
* ```fish_config``` to launch web browser to select Terminal fonts, colors, prompts, functions, etc. 
* I'm using the fisher plugin manager, primarily to install [z](https://github.com/jethrokuan/z) jump command. Also useful installing various powerline bars, prompts.
* Built-in syntax highlighting of commands.
* I have vimkeys on in Fish option. Fish shows what mode you are in and works well with autocomplete.

### Essential programs

* ```nvim``` the Neovim text editor. 
* ```z``` directory jumping navigation. I use this instead of ```cd``` much of the time. [info](https://github.com/jethrokuan/z)
* ```tldr``` command line helper which lists how to use most command line software. [info](https://tldr.sh/)
* ```vimwiki``` which I use to create and edit a huge personal wiki file for notes, brainstorming, copying down info, listing movies to watch, books I've read, etc etc. [info](https://opensource.com/article/18/6/vimwiki-gitlab-notes)
* ```pyradio``` which I use to stream music. See [my article](https://opensource.com/article/19/11/pyradio).
* ```git``` version control system. I use GitHub, Tildegit and [Keybase Git](https://keybase.io/blog/encrypted-git-for-everyone).
* ```amfora``` - intuitive gemini client
* ```vpm``` - the "void package manager" which wraps around xbps

# PATH
The PATH tells your computer where your custom software is located, so that you can launch it by typing its name instead of having to execute it from its specific directory. *(i.e. You can type ```my-program``` instead of ```./my-program.sh``` for example.*

In fish, you add to your PATH in `config.fish`, located at ```~/.config/fish/config.fish```, not in your bashrc or `.bash_profile.` Custom programs can be placed in the bin folder, which is in the path.

# Aliases / Fish Functions
Rather than bash aliases, fish shell uses functions, stored in ```~/.config/fish/functions/```

Current-ish list:
- ```ansiweather``` - simplifies the command to grab the weather and display a 5 day local weather forecast one-liner
- ```backitup``` - wrapper around rsync for backing up my computers
- ```bandcamp``` - specify url of bandcamp album to play on the commandline via player. no error handling at this point. PgUp/PgDown to navigate tracks.
- ```battery``` - current battery state and percentage
- ```calm``` - plays some brown noise with sox, sounds like calm ocean waves
- ```clockywock``` - analog CLI clock
- ```copy <filename>``` - Copies contents of file to the computer's clipboard
- ```dirsize``` - Lists current directory size and size of any enclosed sub-directories
- ```dither <filename>``` - Resizes, converts to grayscale, and turns image into a dithered gif
- ```dvorak``` - switches keyboard map to dvorak
- ```img <image_file>``` - opens specified image file in the CLI using w3m-img, inspired by fff
- ```epubmobile url``` - downloads specified article (html link) to Bookmobile's epubs folder and saves in proper format
- ```filecount``` - basically a one-liner that uses wordcount to count the number of files in your current folder.
- ```fisher``` - installed when you install [fisher](https://github.com/jorgebucaran/fisher) Fish package manager. ```fisher add [packagename]```. Find packages [here](https://github.com/jorgebucaran/awesome-fish). ```fisher ls``` to list installed.
- ```minilog``` - shortcut to my minilog micro-journal (takes message, log or help flags)
- ```open``` - mimics the Mac open command. Essentially just an alias to Linux equivalent ```xdg-open```.
- ```pdfsplit <input.pdf> <starting-page-num> <ending-page-num> <output.pdf>``` - Using ghostscript, this oneliner can excerpt any subsection out of a pdf doc.
- ```qwerty``` - switches keyboard map to qwerty  
- ```rm``` - this adds a **"are you sure?"** prompt when I try to delete anything in the Terminal. Can be over-ridden with ```rm -rf``` if I'm really surely surely sure.
- ```vim``` - remap so instead launches Neovim. 
- ```weather``` - runs curl to pull down the weather from wttr.in - location i think determined via ip address?
- ```wolfeyes``` - plays random 'radio' station of Wolf Eyes tracks
- ```z [directory]``` - this *essential* function is actually installed through [fisher](https://github.com/jorgebucaran/fisher). It lets you type ```z homework``` and it auto ```cd``` jumps you into the proper folder.

## Config files
The config files in this repo are inside config, but should be titled .config with the dot and located at ```~/.config```. 

## Neovim
Instead of vim's vimrc I have an ~~init.vim~~ (update: I converted my viml script to lua) init.lua file at ~/.config/nvim. The file is fairly minimal and fully commented. I am using the [Plug](https://github.com/junegunn/vim-plug) plugin manager. I set neovim (nvim) as my $EDITOR in the .fish_config file. I have a function that launches nvim when I type vim.

Rather than tmux multiplexer or properly managing buffers in Vim/Neovim I just open new tabs in my terminal, switch between them with the Alt keys, and can copy and paste between them using the normal y/ank and p/aste because of a setting I added to my Neovim config that lets me paste text from anywhere on my computer inside Neovim now. This relies (on my computer) on the installed program xclip.

I type in Dvorak on my computer and I've found Dvorak is fine for Vim without any need for remapping keys. Have used this setup for 7+ years and have no complaints.

Plug-ins
* [Goyo](https://github.com/junegunn/goyo.vim) - minimalist writing app. ```:Goyo``` to toggle it on/off.
* [Vimwiki](https://vimwiki.github.io/) - a vim-based personal wiki / knowledge repository. I use this extensively but it's for internal use only on my own machine. ```\ww``` (aka 'leader-w-w') to turn on, or my shortcut function ```vimwiki``` to jump into it.
* [vim-sensible](https://www.vim.org/scripts/script.php?script_id=4391) - provides sensible basic defaults in vim. Includes: backspace in insert mode, begin search while typing out match string, make whitespace prettier, show at least one line above cursor, autoload file changes, improve finding matching open and close tags
* [Nerd-Tree](https://github.com/scrooloose/nerdtree) - make vim work more like an IDE with left-side file view. I added a shortcut so *Control-N* toggles the filetree open and closed. Without that you have to type ```NERDTreeToggle``` (case-sensitive). 
* [Markdown Preview](https://github.com/iamcco/markdown-preview.nvim) - Runs very fast. Starts a local server and opens your browser to preview Markdown as you're writing it live. As you move in your markdown file it scrolls to your location in the browser.  ```:MarkdownPreview``` to begin or end.

When I want to add a new plugin I simply add a single line to my init.lua, then run ```:PlugInstall``` and it downloads into the proper folder.

### lxdm

lxdm is the default display manager on Void, though can be switched. To edit the login display, run ```sudo lxdm-config```.

## TLDR

Can't remember how to do something in the terminal but know the name of the app? Then use **TLDR**.

Example: ```tldr ls```

Lists the most common uses for a command.

## Dvorak-specific

### i3

i3 is a nice window manager but there's a trick to configuring it for use on Dvorak. I compiled a short [walkthrough to setup i3 with Dvorak](https://gist.github.com/lee2sman/716c73e1fb7d5979d98fb6ad325a3ab2). My config file is in i3 directory. Adds keyboard volume controls, muting, tap to click, Dvorak.

### /etc/X11/xorg.conf.d/dvorak.conf
My Dvorak input settings and remapping of caps-lock to escape are here.
