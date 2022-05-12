#!/bin/bash
# icons depend on nerdfonts being installed
while true; do
bat() {
   	batstat="$(cat /sys/class/power_supply/BAT0/status)"
	battery="$(cat /sys/class/power_supply/BAT0/capacity)"
	if [[ $battery -ge 9 ]] && [[ $battery -le 15 ]] && [[ $batstat = "Discharging" ]];        then
        rofi -e "    Low Battery! 
    $battery %" -font "JetBrains Mono Nerd Font 18"
  
	elif [[ $battery -ge 9 ]] && [[ $battery -le 12 ]] && [[ $batstat = "Discharging" ]];        then
        rofi -e "    Low Battery! 
    Get and plug your Power Adapter!
    $battery %" -font "JetBrains Mono Nerd Font 18"

	elif [[ $battery -ge 6 ]] && [[ $battery -le 8 ]] && [[ $batstat = "Discharging" ]];        then
        rofi -e "    Low Battery! 
    Last Chance!
    Save and Exit all your work
    AUTOMATICALLY suspend at 5%
    $battery %" -font "JetBrains Mono Nerd Font 18"

	elif [[ $battery -ge 2 ]] && [[ $battery -le 5 ]] && [[ $batstat = "Discharging" ]];        then
        systemctl suspend
        # systemctl poweroff
    fi
 }
    $(bat)
sleep 5m
done
