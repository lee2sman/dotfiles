function bandcamp --description 'stream bandcamp tracks of an album url'
	echo "usage: bandcamp full-album-url"
	echo "Navigate tracks with PgUp / PgDown"
        mplayer (yt-dlp -g $argv)
end
