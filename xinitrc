#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# Setup IM enviroment
export XMODIFIERS=@im=ibus
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
ibus-daemon -x -d

# Set wallpaper
sh ~/.fehbg &

# set statusbar and start dwm
conky | while read -r; do xsetroot -name "$REPLY"; done &

# Auto start urxvt with tmux
urxvtd -q -f -o           
urxvtc -e sh -c "tmux" &

# Start dwm
exec dwm
