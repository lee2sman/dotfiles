# Add dotfiles bin programs to my PATH in FISH instead of in bash_profile or bashrc
set PATH /Users/2sman/dotfiles/bin $PATH

#Make Nvim the default editor
set --export EDITOR "nvim"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/2sman/exec -1 /usr/local/bin/fish/google-cloud-sdk/path.fish.inc' ]; if type source > /dev/null; source '/Users/2sman/exec -1 /usr/local/bin/fish/google-cloud-sdk/path.fish.inc'; else; . '/Users/2sman/exec -1 /usr/local/bin/fish/google-cloud-sdk/path.fish.inc'; end; end
