#!/bin/bash

function powermenu {
#    options=" Cancel\n Shutdown\n Restart\n Logout\n Sleep\n Lock\n Screenshot\n ScreenRecord"
    options=" Cancel\n Shutdown\n Restart\n Sleep\n Lock\n Logout = Mod+Escape"
    selected=$(echo -e $options | dmenu)
    # 
    if [[ $selected = " Shutdown" ]]; then
        /home/agung/.dwm/scripts/powermenu/shutdown-confirm.sh
    elif [[ $selected = " Restart" ]]; then
        /home/agung/.dwm/scripts/powermenu/restart-confirm.sh
    elif [[ $selected = " Logout = Mod+Escape" ]]; then
        ~/.dwm/scripts/powermenu/logout-confirm.sh
        /home/agung/.dwm/scripts/powermenu/logout-confirm.sh
    elif [[ $selected = " Sleep" ]]; then
         lock && systemctl suspend
    elif [[ $selected = " Lock" ]]; then
        betterlockscreen --lock
    elif [[ $selected = " Cancel" ]]; then
        return
    fi
}
powermenu
