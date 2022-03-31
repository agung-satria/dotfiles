sudo apt install mpd ncmpcpp mpc

On the config directory:
choose the right port first
cp -R {.mpd,.ncmpcpp} ~/

For shortcut:

===port 6600/default===
Super+F9
mpc play

Super+Shift+F9
mpc stop

Super+F10
mpc toggle

Super+F12
mpc next

Super+F11
mpc prev

Super+Shift+F10
mpc random

Super+Shift+F12
mpc seek +00:0010

Super+Shift+F11
mpc seek -00:0010


===port 6601/default===
Super+F9
mpc -p 6601 play

Super+Shift+F9
mpc -p 6601 stop

Super+F10
mpc -p 6601 toggle

Super+F12
mpc -p 6601 next

Super+F11
mpc -p 6601 prev

Super+Shift+F10
mpc -p 6601 random

Super+Shift+F12
mpc -p 6601 seek +00:0010

Super+Shift+F11
mpc -p 6601 seek -00:0010

DONE!
