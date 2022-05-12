#!/bin/bash
#Purpose: 
#Version: 
#Created Date:  Fri 24 Dec 2021 12:20:45 AM WIB
#Modified Date: 
#Author: Agung Satria
# START #
# script to create timer in terminal
# Jason Atwood
# 2013/6/22

# Start up
echo "starting timer script ..."
sleep 0.5 # seconds

# Get input from user
read -p "Timer for how many minutes?" -e DURATION
DURATION=$(( $DURATION*60 )) # convert minutes to seconds
# DURATION=$(( $DURATION+1 )) # convert minutes to seconds

# Get start time
START=$(date +%s)

# Infinite loop
while [ -1 ]; do
clear # Clear window

# Do math
NOW=$(date +%s)    # Get time now in seconds
DIF=$(( $NOW-$START ))    # Compute diff in seconds
ELAPSE=$(( $DURATION-$DIF ))    # Compute elapsed time in seconds
MINS=$(( $ELAPSE/60 ))    # Convert to minutes... (dumps remainder from division)
SECS=$(( $ELAPSE - ($MINS*60) )) # ... and seconds

# Conditional
if [ $MINS == 0 ] && [ $SECS == 0 ]    # if mins = 0 and secs = 0 (i.e. if time expired)
then # Blink screen
for i in `seq 1 180`; # for i = 1:180 (i.e. 180 seconds)
do
clear # Flash on
setterm -term linux -back red -fore white # use setterm to change background color
echo "00:00 " # extra tabs for visibility

sleep 0.5

clear # Flash off
setterm -term linux -default # Clear setterm changes from above
echo "00:00" # (I.e. go back to white text on black background)
sleep 0.5
done # End for loop
break    # End script

else # Else, time is not expired
echo "$MINS:$SECS"    # Display time
sleep 1 # Sleep 1 second
fi    # End if
done    # End while loop
# END #
