function open --description 'simplify xdg-open command'
    if count $argv > /dev/null
	xdg-open $argv & #open specified directory
	else
	  open . &     #else open here
	end
end
