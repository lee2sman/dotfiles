#!/usr/bin/env fish
# put this in the path somewhere like /usr/local/bin
# same with git-update.fish
# make both executable

git add *
git commit -m "update: $(date)"

#run keybase if not already running
run_keybase -g

git push
