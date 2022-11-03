if status is-interactive
    # Commands to run in interactive sessions can go here
end

# set neovim editor default
set -gx EDITOR nvim

# turn on vi keybindings for fish repl
fish_vi_key_bindings
