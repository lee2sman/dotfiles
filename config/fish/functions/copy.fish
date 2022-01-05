function copy --description 'copies file to clipboard'

	if test (uname -r | sed -n 's/.*\( *Microsoft *\).*/\1/ip') 
	    # This is Windows WSL baby!
	    cat $argv | clip.exe
	else
	    # Not Windows
	    cat $argv | xclip -selection clipboard
	end
end
