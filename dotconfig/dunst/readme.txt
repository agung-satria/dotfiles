sudo pacman -S dunst
add "dunst" to startup file (ex: coolautostart on dwm).

mkdir ~/.local/share/sounds
cp ./sounds/*.wav ~/.local/share/sounds
cp ./bin/* ~/.local/bin

convert mp3 to ogg, so it can play using paplay (wav also work i tried)
ffmpeg audio.mp3 -vn audio.ogg

put the alert sound into $PATH
alert

