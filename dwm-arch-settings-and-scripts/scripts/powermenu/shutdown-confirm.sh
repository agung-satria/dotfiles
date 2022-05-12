#!/bin/bash

function shutdownconfirm {
    options=" Cancel\n Yes, Shutdown"
    selected=$(echo -e $options | dmenu)
    # 
    if [[ $selected = " Cancel" ]]; then
        return
    elif [[ $selected = " Yes, Shutdown" ]]; then
        systemctl poweroff
        # ~/.config/i3/bin/powermenu/powermenu.sh
    fi
}
shutdownconfirm
