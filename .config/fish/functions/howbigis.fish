# Defined in /home/lee/.config/fish/functions/howbigis.fish @ line 1
function howbigis --description 'find the size of a package in aptitude'
	apt show $argv | grep Size
end
