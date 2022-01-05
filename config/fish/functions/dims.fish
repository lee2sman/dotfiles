function dims --description 'get dimensions of a videofile w/ ffmpeg'
	ffprobe -v error -select_streams v:0 -show_entries stream=width,height -of csv=s=x:p=0 $argv
end
