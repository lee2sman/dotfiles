function dither --description 'dither, reduce size and grayscale file'
convert $argv -resize 800x600 -colorspace gray -ordered-dither 8x8 (string split -r -m1 . $argv)[1].gif
echo 'converted to dither: ' (string split -r -m1 . $argv)[1].gif
end
