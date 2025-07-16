if status is-interactive
    # Commands to run in interactive sessions can go here
end

# set neovim editor default
set -gx EDITOR nvim

# set playdate sdk path
set -gx PLAYDATE_SDK_PATH /home/void/Games/PlaydateSDK-2.1.0/

# Set alsa as the audio backend for Love2d's OpenAL Soft audio library
set -gx ALSOFT_DRIVERS alsa

# turn on vi keybindings for fish repl
fish_vi_key_bindings

# Created by `pipx` on 2023-12-18 19:37:39
set PATH $PATH /home/void/.local/bin
