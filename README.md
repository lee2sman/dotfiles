dotfiles
========

This is my dotfiles repo to quickly clone and get started on a new computer and to hold my settings in case I lose anything or my computer dies.

[Dotfiles](https://github.com/webpro/awesome-dotfiles) are a programmer's term for the hidden files that start with a ```.``` stored in the root directory of your computer. They contain custom settings for your operating system and software, especially commandline software. This includes adding special commands, remapping keyboard keys, specifying window sizes, changing sounds, and just generally customizing your computer's defaults. In this repo I have only included dotfiles of things I've customized.

**General notes:** I use [Fishshell](https://fishshell.com/) instead of Bash or Zsh. I type in [Dvorak](https://en.wikipedia.org/wiki/Dvorak_keyboard_layout). I use Neovim and vim-keys. I use the i3 window manager without a desktop environment. I use Alpine to check my email.

![Screenshot](screenshot.png)  
*Screenshot of Terminology terminal, showing this document being edited, with :Goyo focuswriter on*

### Fish Shell?

- Autocomplete is on by default and works really well, using the manual pages and your previous commands to make suggestions. Press right to accept any suggestion or else keep typing.
- It looks great. Type ```fish_config``` to launch your web browser to select how your Terminal will look (fonts, colors, prompts, functions, etc). *Update: I'm using the Terminology terminal which overrides some of this and has an easy theme selector as well*.
- I'm using the fisher plugin manager. You can easily install complex beautiful prompts and the reason I installed it was to be able to add the incredible [z](https://github.com/jethrokuan/z) jump command, etc. 
- syntax highlighting is amazing. This makes it easy to understand what I'm typing/calling.
- I use vimkeys in Fish so I can use vim commands when composing commands at my prompt. zsh has this too, but Fish shows what mode you are in and autocomplete works well with it.

### Essential programs

Keep in mind I'm an artist, not a developer. I write text most days, work on creative coding and interactive and web-based art, build sites, create tools, read, make music, etc.

- ```nvim``` the Neovim text editor. 
- ```z``` directory jumping navigation. I use this instead of ```cd``` much of the time. [info](https://github.com/jethrokuan/z)
- ```tldr``` command line helper which lists how to use most command line software. [info](https://tldr.sh/)
- ```vimwiki``` which I use to create and edit a huge personal wiki file for notes, brainstorming, copying down info, listing movies to watch, books I've read, etc etc. [info](https://opensource.com/article/18/6/vimwiki-gitlab-notes)
- ```pyradio``` which I use to stream music. See [my article](https://opensource.com/article/19/11/pyradio).
- ```apt``` package manager for Ubuntu. *Previously on the Mac I used ```brew``` package manager.*
- ```git``` version control system. I use both GitHub and [Keybase's encrypted Git](https://keybase.io/blog/encrypted-git-for-everyone).
- ```nnn``` - simple attractive file browser
- ```amfora``` - intuitive gemini client

# My PATH
The PATH tells your computer where your custom software is located, so that you can launch it by typing its name instead of having to execute it from its specific directory. *(i.e. You can type ```my-program``` instead of ```./my-program.sh``` for example.*

In fish, you add to your PATH in `config.fish`, not bashrc or `.bash_profile.` Custom programs can be placed in the bin folder, which can be added to the PATH inside config.fish.

# Aliases / Fish Functions
Rather than bash aliases, fish shell uses functions.

Current-ish list:
- ```agenda``` - prints my weekly google calendar schedule, using gcalcli
- ```av98``` - launches the experimental simple commandline AV-98 Gemini Protocol browser
- ```bandcamp``` - specify url of bandcamp album to play on the commandline via player. no error handling at this point. PgUp/PgDown to navigate tracks.
- ```bat``` - current battery state and percentage
- ```brogue``` - had to modify some makefile and config to get this roguelike game to work in ubuntu. This shortcut launches the modified game.
- ```bsdgames``` - I can't remember all the games installed with bsdgames individually, so this just lists them for me. For example, ```adventure``` for Colossal Cave Adventure, ```backgammon```, ```hack``` roguelike game, ```robots``` Dalek game, ```cribbage``` card game, ```monop``` commandline monopoly, ```tetris-bsd```
- ```calm``` - plays some brown noise with sox, sounds like calm ocean waves
- ```filecount``` - basically a one-liner that uses wordcount to count the number of files in your current folder.
- ```fisher``` - installed when you install [fisher](https://github.com/jorgebucaran/fisher) Fish package manager. ```fisher add [packagename]```. Find packages [here](https://github.com/jorgebucaran/awesome-fish). ```fisher ls``` to list installed.
- ```food n``` - adds date and time and specified food n to a simple csv file at ~/.food (for tracking meals)
- ```make-website n``` - copies over a starter html, css, js to the specified named directory, creating it if needed
- ```minilog``` - shortcut to my minilog micro-journal (takes message, log or help flags)
- ```open``` - mimics the Mac open command. Essentially just an alias to Linux equivalent ```xdg-open```.
- ```pdfsplit <input.pdf> <starting-page-num> <ending-page-num> <output.pdf>``` - Using ghostscript, this oneliner can excerpt any subsection out of a pdf doc.
- ```rm``` - this adds a **"are you sure?"** prompt when I try to delete anything in the Terminal. Can be over-ridden with ```rm -rf``` if I'm really surely surely sure.
- ```vim``` - remap so instead launches Neovim. (If I ever actually wanted to just run vim I could type ```vi``` which is automatically redirected on ubuntu, but that never happens)!
- ```vimwiki``` - launches my vimwiki in Neovim
- ```weather``` - runs curl to pull down the weather from wttr.in - location i think determined via ip address?
- ```z [directory]``` - this *essential* function is actually installed through [fisher](https://github.com/jorgebucaran/fisher). It lets you type ```z homework``` and it auto ```cd``` jumps you into the proper folder.

## Neovim
Instead of vim's vimrc I have an init.vim file at ~/.config/nvim . I am using the [Plug](https://github.com/junegunn/vim-plug) plugin manager, which gets called in my init.vim file. I set neovim (nvim) as the $EDITOR in the .fish_config file. I have a function that launches nvim when I type vim. My init.vim is fully commented, so you can look at the details there.

Rather than tmux multiplexer or properly managing buffers in Vim/Neovim I just open new tabs in my terminal, switch between them with the Alt keys, and can copy and paste between them using the normal y/ank and p/aste because of a setting I added to my Neovim config in my init.vim file that lets me paste text from anywhere on my computer inside Neovim now. You can take a look at my init.vim file for this.

I type in Dvorak on my computer and I've found Dvorak is fine for Vim without any need for remapping keys. Have used this setup for 5 years; no complaints.

Plug-ins
- [Goyo](https://github.com/junegunn/goyo.vim) - minimalist writing app. ```:Goyo``` to toggle it on/off.
- [Vimwiki](https://vimwiki.github.io/) - a vim-based personal wiki / knowledge repository. I use this extensively but it's for internal use only on my own machine. ```\ww``` (aka 'leader-w-w') to turn on, or my shortcut function ```vimwiki``` to jump into it.
- [vim-sensible](https://www.vim.org/scripts/script.php?script_id=4391) - provides sensible basic defaults in vim. Includes: backspace in insert mode, begin search while typing out match string, make whitespace prettier, show at least one line above cursor, autoload file changes, improve finding matching open and close tags
- [Nerd-Tree](https://github.com/scrooloose/nerdtree) - make vim work more like an IDE with left-side file view. I added a shortcut so *Control-N* toggles the filetree open and closed. Without that you have to type ```NERDTreeToggle``` (case-sensitive) and it's not clear to me how to change this to remap to ```:tree``` instead.
- [Sonic Pi](https://github.com/dermusikman/sonicpi.vim) - used to run Sonic Pi (livecoding music software) from Vim instead of its own application. Still requires the original Sonic Pi software to be open/running. This acts as alternate frontend.
- [Markdown Preview](https://github.com/iamcco/markdown-preview.nvim) - Replaces Mou, Macdown, and Markdown preview that I was previously using in Atom. Runs very fast. Starts a local server and opens your browser to preview Markdown as you're writing it live. Scrolls the webpage for you too as you move up and down in your document! Since I'm writing in Markdown all the time this plugin is a must! ```:MarkdownPreview``` to begin.

When I want to add a new plugin I simply add a single line to my init.vim file, then run ```:PlugInstall``` and it downloads into the proper folder.

Custom commands:
- I've added ```:Scratchpad``` to my init.vim for Neovim so that I can pull up a simple web-based scratchpad when I need to draw something. [vwscratchpad repo](https://tildegit.org/exquisitecorp/vwscratchpad)

## Atom for IDE and custom Markdown editor
vim-mode and ex-mode plugins for me, liveserver, Zen focuswriter, teletype for collaborative editing. I mostly use Neovim instead unless I'm teaching students.

## TLDR

Can't remember how to do something in the terminal but know the name of the app? Then use **TLDR**.

Example: ```tldr ls```

Lists the most common uses for a command.

I contributed the file for how to use ```gcalcli```, the command-line client for google calendar. Run ```tldr gcalcli``` to see my handiwork.

# i3

i3 is a nice window manager but hard to configure for use on Dvorak. I compiled a short [walkthrough to setup i3 with Dvorak](https://gist.github.com/lee2sman/716c73e1fb7d5979d98fb6ad325a3ab2). My config file is in i3 directory. Adds keyboard volume controls, muting, tap to click, Dvorak.
  
# Alpine

I use CLI program Alpine to check my personal email, hosted with Migadu. I use a minimal config.
