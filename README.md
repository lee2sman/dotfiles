dotfiles
========

This is my dotfiles repo to quickly clone and get started on a new computer and to hold my settings in case I lose anything or my computer dies.

As of December 2019 I have switched to Linux (Ubuntu) as my regular OS. [Goodbye Mac](https://opensource.com/article/20/3/mac-linux). My Mac dotfiles can be found in the main branch. Linux dotfiles (more minimal) in the Linux branch.

I use [fishshell](https://fishshell.com/) instead of Bash. I type in [Dvorak](https://en.wikipedia.org/wiki/Dvorak_keyboard_layout).

![Screenshot](screenshot.png)  
*Screenshot of my Terminology terminal, showing this document being edited, with :Goyo focuswriter on*

### Why Fish Shell?

- Autocomplete is on by default and works really well, using the manual pages and your previous commands to make suggestions. Press right to accept any suggestion or else keep typing.
- It looks great. Type ```fish_config``` to launch your web browser to select how your Terminal will look (fonts, colors, prompts, functions, etc). *Update: I'm using the Terminology terminal which overrides some of this and has an easy theme selector as well*.
- I'm using the fisher plugin manager. You can easily install complex beautiful prompts and the reason I installed it was to be able to add the incredible [z](https://github.com/jethrokuan/z) jump command, etc. 
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
- ```tldr``` command line helper which lists how to use most command line software. [info](https://tldr.sh/)
- ```gcalcli``` which can display, edit and add to my google calendar. [info](https://github.com/insanum/gcalcli)
- ```vimwiki``` which I use to create and edit a huge personal wiki file for notes, brainstorming, copying down info, listing movies to watch, books I've read, etc etc. [info](https://opensource.com/article/18/6/vimwiki-gitlab-notes)
- ```pyradio``` which I use to stream music. See [my article](https://opensource.com/article/19/11/pyradio).
- ```apt``` package manager for Ubuntu. *Previously on the Mac I used ```brew``` package manager.*
- ```git``` version control system. I use both GitHub and [Keybase's encrypted Git](https://keybase.io/blog/encrypted-git-for-everyone).

# My PATH
The PATH tells your computer where your custom software is located, so that you can launch it by typing its name instead of having to execute it from its specific directory. *(i.e. You can type ```my-program``` instead of ```./my-program.sh``` for example.*

In fish, you add to your PATH in `config.fish`, not bashrc or `.bash_profile.` Custom programs can be placed in the bin folder, which can be added to the PATH inside config.fish.

# Aliases / Fish Functions
In Bash we have aliases, but Fishshell calls them functions. Check them out inside /fish/functions. These are used to simplify or improve specifdic commandline calls.

*Update: I used to have a ton of functions for launching radio stations, rendering text, etc. Have simplified and eliminated most of these on my Ubuntu machine (for example by using the pyradio program now) but they are still on my Mac found in the main branch under fish/functions*.

Current-ish list:
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
I've switched to Neovim from Vim for text editing/coding/etc which I use like an IDE. Instead of a .vimrc I have an init.vim file. It needs to be placed in ~/.config/nvim . I am using the [Plug](https://github.com/junegunn/vim-plug) plugin manager, which gets called in my init.vim file. I set neovim (nvim) as the $EDITOR in the .fish_config file. I have a function that launches nvim when I type vim.

I never learned tmux terminal multiplexer or properly managing buffers in Vim/Neovim. Instead I just open new tabs in my terminal, switch between them with the Alt keys, and can copy and paste between them using the normal y/ank and p/aste because of a setting I added to my Neovim config in my init.vim file. You can take a look.

I type in Dvorak on my computer and I've found Dvorak is fine for Vim without any need for remapping keys. Have used this setup for years; no complaints.

Plug-ins
- [Goyo](https://github.com/junegunn/goyo.vim) - minimalist writing app
- [Vimwiki](https://vimwiki.github.io/) - a vim-based personal wiki / knowledge repository. I use this extensively but it's for internal use only on my own machine.
- [vim-sensible](https://www.vim.org/scripts/script.php?script_id=4391) - provides sensible basic defaults in vim.
- [Nerd-Tree](https://github.com/scrooloose/nerdtree) - make vim work more like an IDE with left-side file view.
- [Sonic Pi](https://github.com/dermusikman/sonicpi.vim) - used to run Sonic Pi (livecoding music software) from Vim instead of its own application. Still requires the original Sonic Pi software to be open/running. This acts as alternate frontend.
- [Markdown Preview](https://github.com/iamcco/markdown-preview.nvim) - Replaces Mou, Macdown, and Markdown preview that I was previously using in Atom. Runs very fast. Starts a local server and opens your browser to preview Markdown as you're writing it live. Scrolls the webpage for you too as you move up and down in your document! Since I'm writing in Markdown all the time this plugin is a must!

## Atom for IDE and custom Markdown editor
vim-mode and ex-mode plugins for me, liveserver, Zen focuswriter, teletype for collaborative editing. I mostly use Neovim instead unless I'm teaching students.

## TLDR

Can't remember how to do something in the terminal but know the name of the app? Then use **TLDR**.

Example: ```tldr ls```

Lists the most common uses for a command.

I contributed the file for how to use ```gcalcli```, the command-line client for google calendar. Run ```tldr gcalcli``` to see my handiwork.

## Images in the Terminology Terminal

Terminology terminal lets you view image files in the browser.

- ```tyls``` - List/display all files in the current directory and show thumbnail image
- ```tycat filename``` - Display filename in the Terminal. You can even do ```tycat *.jpg``` for example to see all of the images in your current directory displayed large in the Terminal. 

