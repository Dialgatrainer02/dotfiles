#!/usr/bin/env bash

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

style="$($HOME/.config/rofi/applets/applets/style.sh)"

dir="$HOME/.config/rofi/applets/applets/configs/$style"
rofi_command="rofi -theme $dir/screenshot.rasi"

# Error msg
msg() {
	rofi -theme "$HOME/.config/rofi/applets/styles/message.rasi" -e "Please install 'scrot' first."
}

# Options
screen=""
area=""
window=""

# Variable passed to rofi
options="$screen\n$area\n$window"

chosen="$(echo -e "$options" | $rofi_command -p 'scrot' -dmenu -selected-row 1)"
case $chosen in
    $screen)
		if [[ -f /usr/bin/scrot ]]; then
			sleep 1; scrot '/tmp/Screnshot_%F_%T_$wx$h.png' -e 'xclip -selection clipboard -target image/png -i $f' && mv /tmp/*.png /home/charlie/Pictures/
		else
			msg
		fi
        ;;
    $area)
		if [[ -f /usr/bin/scrot ]]; then
			scrot -s '/tmp/%F_%T_$wx$h.png' -e 'xclip -selection clipboard -target image/png -i $f' && mv /tmp/*.png /home/charlie/Pictures/
		else
			msg
		fi
        ;;
    $window)
		if [[ -f /usr/bin/scrot ]]; then
			sleep 1; scrot -u '/tmp/%F_%T_$wx$h.png' -e 'xclip -selection clipboard -target image/png -i $f' && mv /tmp/*.png /home/charlie/Pictures/
		else
			msg
		fi
        ;;
esac

