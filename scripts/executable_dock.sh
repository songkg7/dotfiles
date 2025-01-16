#!/bin/bash

source "./dock_functions.sh"

declare -a apps=(
    '/Applications/Notion Calendar.app'
    '/System/Applications/Music.app'
    '/Applications/KakaoTalk.app'
    '/Applications/Discord.app'
    '/Applications/Warp.app'
);

declare -a folders=(
    ~/Downloads
);

clear_dock
enable_recent_apps_from_dock

for app in "${apps[@]}"; do
    add_app_to_dock "$app"
done

for folder in "${folders[@]}"; do
    add_folder_to_dock $folder
done

killall Dock
