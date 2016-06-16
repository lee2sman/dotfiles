function get_resolution --description 'Prints current screen resolution'
	system_profiler SPDisplaysDataType | grep Resolution $argv
end
