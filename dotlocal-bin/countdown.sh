#!/bin/bash
#Purpose: Countdown, make sure figlet is installed!
#Version: 
#Created Date:  Fri 24 Dec 2021 12:25:25 AM WIB
#Modified Date: 
#Author: Agung Satria
# START #

# Get input from user
read -p "Timer for how many second?" -e DURATION
# DURATION=$(( $DURATION*60 )) # convert minutes to seconds
DURATION=$(( $DURATION+1 ))

# N=11; while [[ $((--N)) >  0 ]]; do  echo  $N |  figlet -c && sleep 1 ; done
N=$DURATION; while [[ $((--N)) >  0 ]]; do  echo  $N |  figlet -c && sleep 1 ; done
figlet -c TIME UP
# bash
zsh
# END #
