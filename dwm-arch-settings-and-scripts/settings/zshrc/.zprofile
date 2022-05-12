export PATH="$PATH:/$HOME/.local/bin:$HOME/.local/bin/statusbar"

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
