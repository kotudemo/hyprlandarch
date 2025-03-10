export PATH="${PATH}:${HOME}/.local/bin/"

wallpapers=$HOME/Pictures/walls
image="$(ls $wallpapers | wofi --dmenu -i -p "  Select wallpaper: ")" 
wallpaper=$wallpapers/$image

if [[ $image == "" ]]; then
    exit 1
fi

if [[ -d $wallpapers/$image ]]; then
    echo "$wallpapers/$image is a directory"
    wallpaper_temp="$image"
    sleep2
    wallpaper_location="$(ls $wallpapers/$image | wofi -n --show dmenu -k "/dev/null")"
elif [[ -f $wallpapers/$image ]]; then
    echo "$wallpapers/$image is a file"
else
    echo "$wallpapers/$image is not valid"
    exit 1
fi

swww img $wallpaper --transition-type grow --transition-fps 60 --transition-duration 0.5 --transition-bezier 0.65,0,0.35,1 --transition-step 1
sleep 1.25

if [[ "$(<~/.cache/wal/mode )" = "dark" ]]; then
  wal -i $wallpaper --cols16
elif [[ "$(<~/.cache/wal/mode )" = "light" ]]; then
  wal -i $wallpaper -l --cols16
fi

# pywalfox update
# pywal-discord -t default
# wal-telegram --wal

#. $HOME/.config/mako/update-colors.sh
