# ~/.profile

set -a

TZ=Europe/London
LANG=en_GB.UTF-8
BIN=~/.local/bin
NOTES=~/Notes
SCREEN_EXCHANGE=/tmp/x
EDITOR=ed
VISUAL=vi
VIMINIT='set cp'
BROWSER=lynx
WWW_HOME=https://duckduckgo.com/lite
GUIBROWSER=firefox
URL='(((http|https|ftp|gopher)|mailto):(//)?[^<>"[:space:]]*|(www|ftp)[0-9]?\.[-a-z0-9.]+)[^.,;[:cntrl:][:space:]<">\):]?[^,<>"[:space:]]*[^.,;[:cntrl:][:space:]<">\):]' # Adapted from 'urlview(1)'

: "${DEFPATH:="$PATH"}"
test "$PATH" = "$BIN:$DEFPATH" || PATH="$BIN:$DEFPATH"

set +a

command -v startx >/dev/null 2>&1 && startx

