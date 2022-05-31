Dependencies: 
yay -S xidlehook

Link:
https://www.youtube.com/watch?v=gTxsNVmw4q4
https://www.youtube.com/watch?v=9wsiNubm5Qs

install slock first

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^create service^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Create a service that run slock when computer sleep
Step 1:
Configure you lockscreen colors (in hex) check your installation output and confirm the install location. Mine was /usr/local/bin/slock 

On the Arch wiki, it is /usr/bin/slock

Step 2:
create this file
/etc/systemd/system/slock@.service

add the following text and confirm your install location (mine is /usr/local/bin/slock) replace it with the correct one if incorrect

[Unit]
Description=Lock X session using slock for user %i
Before=sleep.target

[Service]
User=%i
Type=simple
Environment=DISPLAY=:0
ExecStartPre=/usr/bin/xset dpms force suspend
ExecStart=/usr/local/bin/slock

[Install]
WantedBy=sleep.target

Step 3: enable the service (replace username with youfr true user name)

sudo systemctl enable slock@username.service

resurces:
https://wiki.archlinux.org/title/Slock
___________________________________create service__________________________________________

make this a script (slocker), and add the script to run on startup (.xinitrc)
xidlehook --not-when-audio --not-when-fullscreen --timer 900 "systemctl suspend" ""

`900` sec = 15 minutes

.xinitrc:
slocker &


^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^auto blank^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
add this to .xinitrc:
xset s blank
xset s 300
____________________________________auto blank_________________________________________
