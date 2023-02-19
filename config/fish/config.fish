set -gx EDITOR nvim

export PLAYDATE_SDK_PATH=~/Games/playdate/PlaydateSDK-1.13.0

status --is-interactive; and source (rbenv init -|psub)

eval "$(luarocks path --bin)"

fish_vi_key_bindings
