function htmlpreview --description 'Preview html files from the Terminal'
	command pandoc -s -f html -t man $argv | groff -T utf8 -man | less
end
