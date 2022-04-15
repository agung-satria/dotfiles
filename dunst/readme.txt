sudo pacman -S dunst
add to startup file (coolautostart on dwm).

cp /etc/dunst/dunstrc ~/.config/dunst/dunstrc
mkdir ~/.local/share/sounds
cd ~/.local/share/sounds
mv ~/Downloads/audio.mp3 .

convert mp3 to ogg, so it can play using paplay (wav also work i tried)
ffmpeg audio.mp3 -vn audio.ogg

put the alert sound into $PATH
alert

