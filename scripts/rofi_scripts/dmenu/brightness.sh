#!/bin/bash

theme=$(awk -F '"' 'END { print $(NF - 1) }' ~/.config/rofi/main.rasi)
[[ $theme =~ dmenu|icons ]] && ~/.orw/scripts/set_rofi_geometry.sh brightness

if [[ $theme != icons ]]; then
	default='default' up='brightness up' down='brightness down' sep=' '
fi

icon_up=
icon_down=
icon_default=

while
	active=$(awk '/^[^#].*[0-9]+%/ {
		l = gensub(/.* ([0-9]+)%.*/, "\\1", 1)
		if(l == 50) print "-a 1" }' ~/.orw/scripts/system_notification.sh)

	echo A: $active

	read row brightness <<< $(cat <<- EOF | rofi -dmenu -i -format 'i s' -selected-row ${row:-0} $active -theme main
		$icon_up$sep$up
		$icon_default$sep$default
		$icon_down$sep$down
	EOF
	)

	[[ $brightness ]]
do
	case $brightness in
		$icon_default*) default_value=50;;
		*)
			[[ $brightness =~ $icon_up ]] && direction=+ || direction=-
			[[ $brightness =~ [0-9]+ ]] && mulitplier=${brightness: -1}
			[[ $mulitplier ]] && value=$((mulitplier * 10))
	esac

	~/Desktop/set_brightness.sh $direction ${default_value:-10}
done
