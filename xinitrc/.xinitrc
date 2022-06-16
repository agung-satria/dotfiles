dwmblocks &
mpd &
lowbatnotif &
hsetroot -cover /home/agung/Pictures/lago-di-braies-in-the-heart-of-the-dolomites-italy-wallpaper-3840x2560-wallpaper.jpg
xset r rate 300 50
xset s blank
xset s 300
# picom --experimental-backends &
picom &
natural-mouse-scroll-false.sh 
#locker &
slocker &
dunst &
#rc-local
st -e sudo chown agung:agung /sys/class/backlight/amdgpu_bl0/*
# exec cinnamon-session
exec dwm
