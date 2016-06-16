function md --description 'Preview markdown files from the Terminal'
	command pandoc -s -f markdown -t man $argv | groff -T utf8 -man | less
end
