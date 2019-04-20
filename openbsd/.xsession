#
# OpenBSD .xsession - needed by xenodm(1)
#

# UTF-8
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

# Environment
export ENV=$HOME/.kshrc
export TERMINAL="st"
export READER="zathura"
export BROWSER="firefox"

#xrdb -merge $HOME/.Xresources

xsetroot -solid dimgray

# disable beep
xset b off

# Run notification daemon
#dunst &

#exec cwm
exec dwm
