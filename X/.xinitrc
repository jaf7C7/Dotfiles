DISPLAY=:0
XENVIRONMENT=~/.Xdefaults
export DISPLAY XENVIRONMENT
# Supposed to fix screen dimming on unplugging power cable
# See https://www.x.org/releases/X11R7.6-RC1/doc/libXext/dpmslib.html
xset -dpms
exec openbox-session
