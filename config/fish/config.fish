set -gx EDITOR nvim
status --is-interactive; and source (rbenv init -|psub)

eval "$(luarocks path --bin)"
