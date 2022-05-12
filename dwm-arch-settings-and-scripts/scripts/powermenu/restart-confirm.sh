#!/bin/bash

function restartconfirm {
    options=" Cancel\n Yes, Restart"
    selected=$(echo -e $options | dmenu)
    # 
    if [[ $selected = " Cancel" ]]; then
        return
    elif [[ $selected = " Yes, Restart" ]]; then
        systemctl reboot
        # ~/.config/i3/bin/powermenu/powermenu.sh
    fi
}
restartconfirm
