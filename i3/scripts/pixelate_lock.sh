#!/bin/bash

icon="$HOME/.config/i3/scripts/lock.png"
img="$HOME/.cache/i3lock.png"

# Capture screenshot of current workspace
scrot $img

# Pixelate image
convert $img -scale 10% -scale 1000% $img
# Blur image
#convert $img -blur 0x4 500% $img

convert $img $icon -gravity center -composite $img
i3lock -u -i $img

# Delete the screenshot image
rm "$img"
