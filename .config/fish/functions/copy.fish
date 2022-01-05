function copy --description 'copies file to clipboard'
cat $argv | xclip -selection clipboard
end
