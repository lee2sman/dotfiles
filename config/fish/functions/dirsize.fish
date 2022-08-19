function dirsize --description 'lists size of current directory and any sub-directories'
echo "Current directory size: " (du -sh .)
echo "Sub-directory sizes: "
du -h --max-depth=1 .
end
