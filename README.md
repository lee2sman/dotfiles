dotfiles
========

```
    888888888888888888888
  s 88 ooooooooooooooo 88     s 888888888888888888888888888888888888888
  S 88 888888888888888 88    SS 888888888888888888888888888888888888888
 SS 88 888888888888888 88   SSS 8888                         - --+ 8888
 SS 88 ooooooooooooooo 88  sSSS 8888           o8888888o         | 8888
sSS 88 888888888888888 88 SSSSS 8888         o88888888888o         8888
SSS 88 888888888888888 88 SSSSS 8888        8888 88888 8888      | 8888
SSS 88 ooooooooooooooo 88 SSSSS 8888       o888   888   888o       8888
SSS 88 888888888888888 88 SSSSS 8888       8888   888   8888       8888
SSS 88 888888888888888 88 SSSSS 8888       8888   888   8888       8888
SSS 88 oooooooooo      88 SSSSS 8888       8888o o888o o8888       8888
SSS 88 8888888888 .::. 88 SSSSS 8888       988 8o88888o8 88P       8888
SSS 88 oooooooooo :::: 88 SSSSS 8888        8oo 9888889 oo8        8888
SSS 88 8888888888  `'  88 SSSSS 8888         988o     o88P         8888
SSS 88ooooooooooooooooo88  SSSS 8888           98888888P           8888
SSS 888888888888888888888__SSSS 8888                               8888_____
SSS |   *  *  *   )8c8888  SSSS 888888888888888888888888888888888888888
SSS 888888888888888888888.  SSS 888888888888888888888888888888888888888
SSS 888888888888888888888 \_ SSsssss oooooooooooooooooooooooooooo ssss
SSS 888888888888888888888  \\   __SS 88+-8+-88============8-8==88 S
SSS 888888888888888888888-. \\  \  S 8888888888888888888888888888
SSS 888888888888888888888  \\\  \\       `.__________.'      ` .
SSS 88O8O8O8O8O8O8O8O8O88  \\.   \\______________________________`_.
SSS 88 el cheapo 8O8O8O88 \\  '.  \|________________________________|
 SS 88O8O8O8O8o8O8O8O8O88  \\   '-.___
  S 888888888888888888888 /~          ~~~~~-----~~~~---.__
 .---------------------------------------------------.    ~--.
 \ \______\ __________________________________________\-------^.-----------.
 :'  _   _ _ _ _  _ _ _ _  _ _ _ _   _ _ _           `\        \
 ::\ ,\_\,\_\_\_\_\\_\_\_\_\\_\_\_\_\,\_\_\_\           \      o '8o 8o .
 |::\  -_-_-_-_-_-_-_-_-_-_-_-_-_-___  -_-_-_   _ _ _ _  \      8o 88 88 \
 |_::\ ,\_\_\_\_\_\_\_\_\_\_\_\_\_\___\,\_\_\_\,\_\_\_\_\ \      88       \
    `:\ ,\__\_\_\_\_\_\_\_\_\_\_\_\_\  \,\_\_\_\,\_\_\_\ \ \      88       .
     `:\ ,\__\_\_\_\_\_\_\_\_\_\_\_\____\    _   ,\_\_\_\_\ \      88o    .|
       :\ ,\____\_\_\_\_\_\_\_\_\_\_\____\  ,\_\ _,\_\_\_\ \ \      'ooooo'
        :\ ,\__\\__\_______________\__\\__\,\_\_\_\,\___\_\_\ \
         `\  --  -- --------------- --  --   - - -   --- - -   )____________
           `--------------------------------------------------'
```

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
