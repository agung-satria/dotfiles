dwmblocks &
mpd &
lowbatnotif &
hsetroot -center ~/Pictures/wallpapers/lake.jpg
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
exec dwm
