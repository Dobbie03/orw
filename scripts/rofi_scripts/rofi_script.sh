#!/bin/bash

path=${0%/*}
${path%/*}/set_rofi_margins.sh

modis+="window_action:$path/window_actions.sh,"
modis+="bar_launchers:$path/bar_launchers.sh,"
modis+="move_to:$path/workspaces.sh move,"
modis+="wall:$path/workspaces.sh wall,"
modis+="workspaces:$path/workspaces.sh,"
modis+="wallpapers:$path/wallpapers.sh,"
modis+="windows:$path/list_windows.sh,"
modis+="bar_icons:$path/bar_icons.sh,"
modis+="playback:$path/playback.sh,"
modis+="playlist:$path/playlist.sh,"
modis+="execute:$path/execute.sh,"
modis+="colors:$path/colors.sh,"
modis+="volume:$path/volume.sh,"
modis+="apps:$path/apps.sh,run,"
modis+="files:$path/files.sh,"
modis+="rec:$path/rec.sh"

rofi -modi "$modis" -show $1 -theme ${2-main}
