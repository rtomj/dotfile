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

#xrdb ~/.Xresources &
xsetroot -solid gray

# ttf fonts
#xset fp+ /usr/local/lib/X11/fonts/*
for m in `ls /usr/local/lib/X11/fonts/`; do
        if [ -d "/usr/local/lib/X11/fonts/$m" ]; then
                xset fp+ "/usr/local/lib/X11/fonts/$m"
        fi
done

# calibrate display
#/usr/local/bin/xcalib profile.icm

# thinkpad trackpoint speed
xinput set-prop /dev/wsmouse "Device Accel Constant Deceleration" 0.4

xsetroot -name " OpenBSD 6.5 "

# disable beep
xset b off

# Run notification daemon
# dunst &

exec dwm

