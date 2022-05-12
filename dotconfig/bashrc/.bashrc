# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
#neofetch
# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias cdd='cd ~/.config/suckless/dwm62-master'
alias cdc='cd ~/.config/suckless/chadwm/chadwm'
alias d='~/bin/mount.sh'
alias D='~/bin/umount.sh'
alias sdb='~/bin/mountsdb.sh'
alias sdbb='~/bin/umountsdb.sh'
alias sdc='~/bin/mountsdc.sh'
alias sdcc='~/bin/umountsdc.sh'
alias f='ranger'
alias cdss='cd ~/Downloads/dotfiles/'
alias cds='cd ~/.config/suckless/'
alias cdv='cd ~/.config/suckless/dwm62-varian'
alias off='sudo systemctl poweroff'
alias BB='~/bin/brightness.sh'
alias BT='~/bin/get_bat_perc.sh'
alias setscroll='sudo nvim /etc/X11/xorg.conf.d/40-libinput.conf'
alias mp3='ncmpcpp'
alias music='ncmpcpp'
alias fast='xset r rate 300 50'
alias startobsvirtualcamera='~/bin/startobsvirtualcamera.sh'
alias wb='wine ~/Downloads/winbox64.exe'
alias mk='make && sudo make install'
alias sx='startx'
alias c='cal 2021'
alias N='nvim ~/notes/'
alias sb='~/bin/set-brightness.sh'
alias v='nvim -o `fzf`'
alias g='ping google.com -c 5'
alias vv='nvim'

PATH=$PATH:/home/.local/bin:/home/bin

## load powerline
#if [ -f `which powerline-daemon` ]; then
#    powerline-daemon -q
#    POWERLINE_BASH_CONTINUATION=1
#    POWERLINE_BASH_SELECT=1
#fi
#if [ -f /usr/local/lib/python3.8/dist-packages/powerline/bindings/bash/powerline.sh ]; then
#    source /usr/local/lib/python3.8/dist-packages/powerline/bindings/bash/powerline.sh
#fi


#
# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
#alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

#load bash-powerline.sh script
#source ~/.bash-powerline.sh



if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
#export PS1=' \w  ' # untuk menghilangkan current directory
#export PS1='\033[0;37m\] \w\[\033[0;37m\]  ' #
#export PS1='\[\033[0;35m\]\h\[\033[0;33m\] \w\[\033[00m\]: ' # same, but w/ color
#export PS1='\[\033[0;35m\]>\033[0;33m\] \w\[\033[00m\]: ' # same, but w/ color
#export PS1='\[\033[0;36m\]>\033[0;36m\] \w\[\033[00m\]: ' # same, but w/ color
#export PS1='\[\033[0;36m\]>\033[0;36m\] \w\[\033[00m\]: ' # same, but w/ color
#export PS1='\[\033[01;32m\]\u:\[\033[01;34m\] \W\033[01;34m \$\[\033[00m\]'

######### DARI http://dotshare.it/dots/1459/ ########
#echo $(clear)
#echo -e '\e[01;30m ▚ \e[0;30m ▞ \e[01;31m ▚ \e[0;31m ▞ \e[01;32m ▚ \e[0;32m ▞ \e[01;33m ▚ \e[0;33m ▞ \e[01;34m ▚ \e[0;34m ▞ \e[01;35m ▚ \e[0;35m ▞ \e[01;36m ▚ \e[0;36m ▞ \e[01;37m ▚ \e[0;37m ▞'
#
#reset=$(tput sgr0)
#bold=$(tput bold)

#PS1="\n\[\e[0;34m\]┌─[\[\e[1;36m\u\e[0;34m\]]──[\e[1;37m\w\e[0;34m]──[\[\e[1;36m\]${HOSTNAME%%.*}\[\e[0;34m\]]\[\e[1;35m\]: \$\[\e[0;34m\]\n\[\e[0;34m\]└────╼ \[\e[1;35m\]>> \[\e[00;00m\]"

#PS1="\n\[\e[0;34m\]┌─[\[\e[1;36m\u\e[0;34m\]]──[\e[1;37m\w\e[0;34m]: \$\[\e[0;34m\]\n\[\e[0;34m\]└────╼ \[\e[1;35m\]>> \[\e[00;00m\]"

#PS1="\n\[\e[0;34m\]┌─[\[\e[1;36m\u\e[0;34m\]]──[\e[1;37m\w\e[0;34m]\[\e[0;34m\]\n\[\e[0;34m\]└────╼ \[\e[1;35m\]>> \[\e[00;00m\]"

#PS1="\[\e[0;36m\]┌─[\[ ]──[\e[1;31m\w\e[0;36m]\[\e[0;36m\]\n\[\e[0;36m\]└──╼ \[\e[1;31m\]>> \[\e[00;00m\]"

#PS1="\[\e[0;36m\]┌─[\[ ]──[\e[1;31m\w\e[0;36m]\[\e[0;36m\]\n\[\e[0;36m\]└──╼ \[\e[1;31m\] \[\e[00;00m\]"

#PS1="\[\e[0;36m\]┌─[\[ Agung]──[\e[1;31m\w\e[0;36m]\[\e[0;36m\]\n\[\e[0;36m\]└───╼ \[\e[1;31m\] \[\e[00;00m\]"
#PS1="\[\e[0;36m\]┌─[\[ Agung]──[\e[1;31m\w\e[0;36m]\[\e[0;36m\]\n\[\e[0;36m\]└───╼ \[\e[1;31m\]>> \[\e[00;00m\]"
#PS1="\[\e[0;36m\]┌─[\[ ]──[\e[1;31m\w\e[0;36m]\[\e[0;36m\]\n\[\e[0;36m\]└───╼ \[\e[1;31m\]>> \[\e[00;00m\]"
PS1="\[\e[0;36m\]┌─[\[ ]──[\e[1;31m\w\e[0;36m]\[\e[0;36m\]\n\[\e[0;36m\]└───╼ \[\e[1;31m\]>> \[\e[00;00m\]"


######### DARI http://dotshare.it/dots/1459/ ########
export PATH="/home/agung/.local/bin:$PATH"
