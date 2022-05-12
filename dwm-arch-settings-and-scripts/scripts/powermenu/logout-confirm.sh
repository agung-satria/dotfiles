#!/bin/bash

function shutdownconfirm {
    options=" Use Mod4+Ctrl+Shift+Q to logout"
    selected=$(echo -e $options | dmenu)
    # 
    if [[ $selected = " Use Mod4+Ctrl+Shift+Q to logout" ]]; then
        return
    # elif [[ $selected = " Cancel" ]]; then
    #     return
        # ~/.config/i3/bin/powermenu/powermenu.sh
    fi
}
shutdownconfirm
