if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
plugins=(git)
plugins=( zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Load aliases and shortcuts if existent.
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/shortcutrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/shortcutrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/zshnameddirrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/zshnameddirrc"

export VISUAL=nvim;
export EDITOR=nvim;

# Reflecting automatically ~/.Xresources to xterm
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# zsh abbreviations===================================
# declare a list of expandable aliases to fill up later
typeset -a ealiases
ealiases=()

# write a function for adding an alias to the list mentioned above
function abbrev-alias() {
    alias $1
    ealiases+=(${1%%\=*})
}

# expand any aliases in the current line buffer
function expand-ealias() {
    if [[ $LBUFFER =~ "\<(${(j:|:)ealiases})\$" ]]; then
        zle _expand_alias
        zle expand-word
    fi
    zle magic-space
}
zle -N expand-ealias

# Bind the space key to the expand-alias function above, so that space will expand any expandable aliases
bindkey ' '        expand-ealias
bindkey '^ '       magic-space     # control-space to bypass completion
bindkey -M isearch " "      magic-space     # normal space during searches

# A function for expanding any aliases before accepting the line as is and executing the entered command
expand-alias-and-accept-line() {
    expand-ealias
    zle .backward-delete-char
    zle .accept-line
}
zle -N accept-line expand-alias-and-accept-line

# zsh abbreviations alias
abbrev-alias g="git"
abbrev-alias gst="git status"
abbrev-alias gad="git add ."
abbrev-alias gcb="git checkout --branch"
abbrev-alias ll="ls -l"
abbrev-alias lsuser="awk -F':' '{ print $1}' /etc/passwd"
abbrev-alias lsgroup="cut -d: -f1 /etc/group | sort"
abbrev-alias sw="hsetroot -cover ~/Pictures/arch.png"
abbrev-alias upmir="reflector -c ID,SG -a 6 —sort-rate —save /etc/pacman.d/mirrorlist"
abbrev-alias mp4tomp3="ffmpeg -i video.mp4 -vn -acodec libmp3lame -ac 2 -ab 160k -ar 48000 audio.mp3"
abbrev-alias mp3toogg="ffmpeg audio.mp3 -vn audio.ogg"
abbrev-alias mkvtomp4="ffmpeg -i video.mkv video.mp4 -qscale 0"
abbrev-alias avitomp4="ffmpeg -i video.avi video.mp4 -qscale 0"
abbrev-alias mp4togif="ffmpeg -i video.mp4 video.gif"
abbrev-alias mp4togifdefineduration="ffmpeg -i video.mp4 -ss 00:00:06<start-time> -t 4<duration> video.gif"
abbrev-alias webcamrecord="ffmpeg -y -i /dev/video0 output.mkv"
abbrev-alias mkslideshow="cat folder/* | ffmpeg -y -framerate 1.5 -f image2pipe -i - -i sound.ogg -acodec copy output.mkv"
# make sure ffmpeg and lame are installed
# zsh abbreviations===================================
source /home/agung/.mygithub/dotfiles/zshrc/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
