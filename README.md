dotfiles
========

This is my dotfiles repo to quickly clone and get started on a new computer and to hold my settings in case I lose anything or my computer dies. There is installer.sh file to simplify the install process and make it less manual.

### Notes

**Distro: Void and *buntu** - I use Void Linux, and sometimes Ubuntu/Lubuntu/Regolith  
**Window Manager: i3** - I use i3 without a desktop environment. If you need help setting up for Dvorak keybindings, see this short [tutorial](https://gist.github.com/lee2sman/716c73e1fb7d5979d98fb6ad325a3ab2)  
**Shell: fish** - I use [Fishshell](https://fishshell.com/) rather than Bash, Zsh or Dash.  
**Keyboard: Dvorak** - I type in [Dvorak](https://en.wikipedia.org/wiki/Dvorak_keyboard_layout).  
**Editor: Neovim** - I use Neovim and vim-keys in fish and anywhere else I can.   
**Email: Thunderbird or alpine** - I use Thunderbird, which is 'good-enough' for me. I tried springmail but switched back. When I ssh in to a tilde server I use alpine primarily but have used mutt. With alpine, I have neovim set as my default editor.

![Screenshot](screenshot.png)  
*Screenshot of Terminology terminal, showing this document being edited, with :Goyo focuswriter on*

### Fish Shell start in previous directory

Anytime I open a terminal, I start up in the last directory I was in. 

To do this, create ```~/.config/fish/conf.d/starting_dir.fish```.  This script will run every time at startup to create a function starting_dir.fish.

Contents:

```
set -q fish_most_recent_dir && [ -d "$fish_most_recent_dir" ] && cd "$fish_most_recent_dir"

function save_dir --on-variable PWD
    set -U fish_most_recent_dir $PWD
end
```

We do this because autoloaded scripts can't handle events. Thanks to [NotTheDr0ids](https://superuser.com/questions/1721898/how-to-open-new-terminal-window-in-previous-directory-using-fish-shell/1721923?noredirect=1#comment2689763_1721923) for this solution.

### More fish stuff

* ```fish_config``` to launch web browser to select Terminal fonts, colors, prompts, functions, etc. 
* I'm using the fisher plugin manager, primarily to install [z](https://github.com/jethrokuan/z) jump command. Also useful installing various powerline bars, prompts.
* Autocomplete is on. Tab/press right to accept.
* Built-in syntax highlighting of commands.
* I have vimkeys on in Fish option. Fish shows what mode you are in and works well with autocomplete.
* Turn off default fish greeting by running ```set fish_greeting```.

### Essential programs

- ```nmtui``` to connect to wifi when traveling
- ```nvim``` the Neovim text editor. 
- ```z``` directory jumping navigation. I use this instead of ```cd``` much of the time. [info](https://github.com/jethrokuan/z)
- ```tldr``` command line helper which lists how to use most command line software. [info](https://tldr.sh/)
- ```vimwiki``` which I use to create and edit a huge personal wiki file for notes, brainstorming, copying down info, listing movies to watch, books I've read, etc etc. [info](https://opensource.com/article/18/6/vimwiki-gitlab-notes)
- ```pyradio``` which I use to stream music. See [my article](https://opensource.com/article/19/11/pyradio).
- ```apt``` package manager for Ubuntu. *Previously on the Mac I used ```brew``` package manager.*
- ```git``` version control system. I use GitHub, Tildegit and [Keybase Git](https://keybase.io/blog/encrypted-git-for-everyone).
- ```nnn``` - simple attractive file browser (or ```fff``` written in bash, and displays images inline in the terminal)
- ```amfora``` - intuitive gemini client

## fish's path
In fish the path is set in `config.fish`, located at ```~/.config/fish/config.fish```, not in your bashrc or `.bash_profile.` Custom programs can be placed in the bin folder, which can be added to the path inside config.fish.

# Aliases / Fish Functions
Rather than bash aliases, fish shell uses functions, stored in ```~/.config/fish/functions/```

Current-ish list:
- ```agenda``` - prints my weekly google calendar schedule, using gcalcli
- ```alpine``` - opens alpine email client directly to inbox rather than menu
- ```ansiweather``` - simplifies the command to grab the weather and display a 5 day local weather forecast one-liner
- ```backitup``` - wrapper around rsync for backing up my computers
- ```bandcamp``` - specify url of bandcamp album to play on the commandline via player. no error handling at this point. PgUp/PgDown to navigate tracks.
- ```battery``` - current battery state and percentage
- ```brogue``` - had to modify some makefile and config to get this roguelike game to work in ubuntu. This shortcut launches the modified game.
- ```bsdgames``` - I can't remember all the games installed with bsdgames individually, so this just lists them for me. For example, ```adventure``` for Colossal Cave Adventure, ```backgammon```, ```hack``` roguelike game, ```robots``` Dalek game, ```cribbage``` card game, ```monop``` commandline monopoly, ```tetris-bsd```
- ```calm``` - plays some brown noise with sox, sounds like calm ocean waves
- ```cat``` - calls bat instead because "bat is a better cat" just as neovim is a better vim
- ```clockywock``` - analog CLI clock
- ```connecttowifi``` - prompts for network name and password, then connects via nmcli
- ```copy <filename>``` - Copies contents of file to the computer's clipboard
- ```delight "text string in quotes"``` - a wrapper around minilog, adds a 'delight' to my log
- ```dirsize``` - Lists current directory size and size of any enclosed sub-directories
- ```dither <filename>``` - Resizes, converts to grayscale, and turns image into a dithered gif
- ```ddg <search string>``` - launches a search in duckduckgo for search string via links2 CLI browser
- ```ddg! <search string>``` - performs search, returning top hit on duckduckgo to std output, piped through less
- ```dvorak``` - switches keyboard map to dvorak
- ```icat <filename/directory>``` - displays specified image or directory of images inline in the console, in Kitty Terminal emulator
- ```img <image_file>``` - opens specified image file in the CLI using w3m-img, inspired by fff
- ```epubmobile url``` - downloads specified article (html link) to Bookmobile's epubs folder and saves in proper format
- ```filecount``` - basically a one-liner that uses wordcount to count the number of files in your current folder.
- ```fisher``` - installed when you install [fisher](https://github.com/jorgebucaran/fisher) Fish package manager. ```fisher add [packagename]```. Find packages [here](https://github.com/jorgebucaran/awesome-fish). ```fisher ls``` to list installed.
- ```food n``` - adds date and time and specified food n to a simple csv file at ~/.food (for tracking meals)
- ```make-website n``` - copies over a starter html, css, js to the specified named directory, creating it if needed
- ```marginalia <search string>``` - does a search for specified string via [Marginalia](https://memex.marginalia.nu/projects/edge/about.gmi), a search engine that favors text-heavy, oldskool-style websites 
- ```minilog``` - shortcut to my minilog micro-journal (takes message, log or help flags)
- ```offpunk``` - a CLI gemini and web client, forked from AV-98, that can be used to save pages for offline browsing
- ```open``` - mimics the Mac open command. Essentially just an alias to Linux equivalent ```xdg-open```.
- ```pdfsplit <input.pdf> <starting-page-num> <ending-page-num> <output.pdf>``` - Using ghostscript, this oneliner can excerpt any subsection out of a pdf doc.
- ```qwerty``` - switches keyboard map to qwerty  
- ```rm``` - this adds a **"are you sure?"** prompt when I try to delete anything in the Terminal. Can be over-ridden with ```rm -rf``` if I'm really surely surely sure.
- ```timetable $argv``` - shortcut to my timetable calendar software
- ```vim``` - remap so instead launches Neovim. (If I ever actually wanted to just run vim I could type ```vi``` which is automatically redirected on ubuntu, but that never happens)!
- ```vimwiki``` - launches my vimwiki in Neovim
- ```weather``` - runs curl to pull down the weather from wttr.in - location i think determined via ip address?
- ```wificonnections``` - Lists all wifi networks stored on computer and prompts you to enter name of one you'd like to get password and SSID information for.
- ```wolfeyes``` - plays random 'radio' station of Wolf Eyes tracks
- ```z [directory]``` - this *essential* function is actually installed through [fisher](https://github.com/jorgebucaran/fisher). It lets you type ```z homework``` and it auto ```cd``` jumps you into the proper folder.

## Config files
The config files in this repo are inside config, but should be titled .config with the dot and located at ```~/.config```. I removed the prefix so that the folder would be more visible on GitHub.

## Neovim
Instead of vim's vimrc I have an init.vim file at ~/.config/nvim . I am using the [Plug](https://github.com/junegunn/vim-plug) plugin manager, called by init.vim. I set neovim (nvim) as the $EDITOR in the .fish_config file. I have a function that launches nvim when I type vim. 

Rather than tmux multiplexer or properly managing buffers in Vim/Neovim I just open new tabs in my terminal, switch between them with the Alt keys, and can copy and paste between them using the normal y/ank and p/aste because of a setting I added to my Neovim config in my init.vim file that lets me paste text from anywhere on my computer inside Neovim now. You can take a look at my init.vim file for this.

I type in Dvorak on my computer and I've found Dvorak is fine for Vim without any need for remapping keys. Have used this setup for 5+ years and have no complaints.

Plug-ins
- [Goyo](https://github.com/junegunn/goyo.vim) - minimalist writing app. ```:Goyo``` to toggle it on/off.
- [Vimwiki](https://vimwiki.github.io/) - a vim-based personal wiki / knowledge repository. I use this extensively but it's for internal use only on my own machine. ```\ww``` (aka 'leader-w-w') to turn on, or my shortcut function ```vimwiki``` to jump into it.
- [vim-sensible](https://www.vim.org/scripts/script.php?script_id=4391) - provides sensible basic defaults in vim. Includes: backspace in insert mode, begin search while typing out match string, make whitespace prettier, show at least one line above cursor, autoload file changes, improve finding matching open and close tags
- [Nerd-Tree](https://github.com/scrooloose/nerdtree) - make vim work more like an IDE with left-side file view. I added a shortcut so *Control-N* toggles the filetree open and closed. Without that you have to type ```NERDTreeToggle``` (case-sensitive). 
- [Sonic Pi](https://github.com/dermusikman/sonicpi.vim) - used to run Sonic Pi (livecoding music software) from Vim instead of its own application. Still requires the original Sonic Pi software to be open/running. This acts as alternate frontend.
- [Markdown Preview](https://github.com/iamcco/markdown-preview.nvim) - Runs very fast. Starts a local server and opens your browser to preview Markdown as you're writing it live. As you move in your markdown file it scrolls to your location in the browser.  ```:MarkdownPreview``` to begin or end.

When I want to add a new plugin I simply add a single line to my init.vim file, then run ```:PlugInstall``` and it downloads into the proper folder.

Custom commands:
- I've added ```:Scratchpad``` to my init.vim for Neovim so that I can pull up a simple web-based scratchpad when I need to draw something. [vwscratchpad repo](https://tildegit.org/exquisitecorp/vwscratchpad)

## Atom for IDE and custom Markdown editor
vim-mode and ex-mode plugins for me, liveserver, Zen focuswriter, teletype for collaborative editing. I mostly use Neovim instead unless I'm teaching students.

## TLDR

Can't remember how to do something in the terminal but know the name of the app? Then use **TLDR**.

Example: ```tldr ls```

Lists the most common uses for a command.

### i3

i3 is a nice window manager but hard to configure for use on Dvorak. I compiled a short [walkthrough to setup i3 with Dvorak](https://gist.github.com/lee2sman/716c73e1fb7d5979d98fb6ad325a3ab2). My config file is in i3 directory. Adds keyboard volume controls, muting, tap to click, Dvorak.

### etc/default/keyboard

My Dvorak input settings and remapping of caps-lock to escape are here. This file is needed as it's the only way I could get capslock to remap to escape persistently between login sessions in i3.
  
### Alpine

I use CLI program Alpine to check my personal email, hosted with Migadu. I use a minimal config saved in .pinerc.
