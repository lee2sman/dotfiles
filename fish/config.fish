# Add dotfiles bin programs to my PATH in FISH instead of in bash_profile or bashrc
set PATH /Users/2sman/dotfiles/bin $PATH

#Make Nvim the default editor
set --export EDITOR "nvim"

# fisherman confi info
set fisher_home ~/.local/share/fisherman
set fisher_config ~/.config/fisherman
source $fisher_home/config.fish

