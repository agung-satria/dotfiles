#!/bin/sh

# INSTALL DULU I3LOCK-COLOR, CEK DI GITHUB

BLANK='#00000000'
CLEAR='#ffffff22'
DEFAULT='#16a5ddff' #nature
# TEXT='#d6c05bff' #nature+yellow
# TEXT='#dbe24fff' #nature+yellow
TEXT='#16a5ddff' #nature+yellow
# DEFAULT='#16a5ddff' #cyandwm
# TEXT='#16a5ddff' #cyandwm
WRONG='#880000bb'
VERIFYING='#924441bb'

i3lock \
--insidever-color=$CLEAR     \
--ringver-color=$VERIFYING   \
\
--insidewrong-color=$CLEAR   \
--ringwrong-color=$WRONG     \
\
--inside-color=$BLANK        \
--ring-color=$DEFAULT        \
--line-color=$BLANK          \
--separator-color=$DEFAULT   \
\
--verif-color=$TEXT          \
--wrong-color=$TEXT          \
--time-color=$TEXT           \
--date-color=$TEXT           \
--layout-color=$TEXT         \
--keyhl-color=$WRONG         \
--bshl-color=$WRONG          \
\
--screen 1                   \
--blur 8                     \
--clock                      \
--indicator                  \
--time-str="%H:%M:%S"        \
--date-str="%A, %d %m %Y"    \
--keylayout 1                \
