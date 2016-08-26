function filecount --description 'Display number of files in current directory'
	echo -n (ls | wc -l); echo -n " files"
end
