#!/bin/bash

theme=$(awk -F '"' 'END { print $(NF - 1) }' ~/.config/rofi/main.rasi)
[[ $theme != icons ]] && close=close min=min max=max sep=' '

icon_max=
icon_min=
icon_close=

if [[ -z $@ ]]; then
	cat <<- EOF
		$icon_close$sep$close
		$icon_max$sep$max
		$icon_min$sep$min
	EOF
else
	case "$@" in
		$icon_min*) xdotool getactivewindow windowminimize;;
		$icon_max*)
			id=$(printf "0x%.8x" $(xdotool getactivewindow))
			#state=$()
			args="${@#$sep$max}"
			action=$(awk '$1 == "'$id'" { print "unmax" }' ~/.config/orw/windows_properties)

			[[ $action == unmax ]] && command="-r" ||
				command="-s move -h 1/1 -v 1/1 resize -h 1/1 -v 1/1"
			~/.orw/scripts/windowctl.sh $args $command;;
		$icon_close*)
			mode=$(awk '/^mode/ { print $NF }' ~/.config/orw/config)
			[[ $mode == floating ]] &&
				wmctrl -c :ACTIVE: ||
				~/.orw/scripts/windowctl.sh -A c

			tmux_command='tmux -S /tmp/tmux_hidden'
			tmux_session=$($tmux_command ls | awk -F ':' '$1 == "'$name'" { print $1 }')
			[[ $tmux_session ]] && $tmux_command kill-session -t $tmux_session;;
			#~/.orw/scripts/get_window_neighbours.sh
			#mode=$(awk '/class.*\*/ { print "tiling" }' ~/.config/openbox/rc.xml)

			#if [[ $mode == tiling ]]; then
			#	get_ids() {
			#		[[ $1 == h ]] && index=3 start_index=2 || index=4 start_index=1
			#		desktop=$(xdotool get_desktop)
			#		start=${properties[start_index]}
			#		end=$((start + ${properties[start_index + 2]}))

			#		read $1_size $1_ids <<< $(wmctrl -lG | sort -nk $index,$index | awk '\
			#				function set_current_window() {
			#					cp = p
			#					cd = d
			#					cid = $1
			#				}

			#				$2 == '$desktop' && $1 != "'$id'" {
			#					p = $'$index'
			#					s = $('$start_index' + 2)
			#					d = $('$start_index' + 4)
			#						e = s + d

			#					if(s >= '$start' && e <= '$end') {
			#						if(cp) {
			#							if(cp == p) {
			#								cd += d
			#								cid = cid " " $1
			#							} else {
			#								if(cd > max) {
			#									max = cd
			#									id = cid
			#									set_current_window()
			#								}
			#							}
			#						} else {
			#							set_current_window()
			#						}
			#					}
			#				} END { print (cd > max) ? cd " " cid : max " " id }')
			#	}

			#	id=$(printf "0x%.8x" $(xdotool getactivewindow))
			#	properties=( $(wmctrl -lG | awk '$1 == "'$id'" { print $1, $3, $4, $5, $6 }') )

			#	get_ids h
			#	get_ids v

			#	((h_size > v_size)) && orientation=h || orientation=v
			#	ids=${orientation}_ids
			#fi

			#wmctrl -c :ACTIVE:

			#[[ $ids ]] && for id in ${!ids}; do
			#	~/.orw/scripts/windowctl.sh -i $id tile $orientation
			#done
	esac
fi
