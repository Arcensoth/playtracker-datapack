# playtracker:module/list

function playtracker:module/values

execute if score $installed temp matches 1.. if score $vdev temp matches ..0 run tellraw @s [{"text":"[Playtracker]", "color": "aqua"}, {"text": " Module ", "color": "white"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "temp"}}]}, {"text": " is active.", "color": "white"}, {"text": "  [Reinstall]", "color": "yellow", "hoverEvent": {"action": "show_text", "value": {"text": "Reinstall", "color": "yellow"}}, "clickEvent": {"action": "run_command", "value": "/function playtracker:module/reinstall"}}, {"text": "  [Uninstall]", "color": "red", "hoverEvent": {"action": "show_text", "value": {"text": "Uninstall", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/function playtracker:module/uninstall"}}]
execute if score $installed temp matches 1.. if score $vdev temp matches 1.. run tellraw @s [{"text":"[Playtracker]", "color": "aqua"}, {"text": " Module ", "color": "white"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "temp"}}]}, {"text": "-dev", "color": "gold", "extra": [{"score": {"name": "$vdev", "objective": "temp"}}]}, {"text": " is active.", "color": "white"}, {"text": "  [Reinstall]", "color": "yellow", "hoverEvent": {"action": "show_text", "value": {"text": "Reinstall", "color": "yellow"}}, "clickEvent": {"action": "run_command", "value": "/function playtracker:module/reinstall"}}, {"text": "  [Uninstall]", "color": "red", "hoverEvent": {"action": "show_text", "value": {"text": "Uninstall", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/function playtracker:module/uninstall"}}]

execute if score $installed temp matches ..0 if score $vdev temp matches ..0 run tellraw @s [{"text":"[Playtracker]", "color": "aqua"}, {"text": " Module ", "color": "red"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "temp"}}]}, {"text": " is active but not installed.", "color": "red"}, {"text": "  [Install]", "color": "green", "hoverEvent": {"action": "show_text", "value": {"text": "Install", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/function playtracker:module/install"}}]
execute if score $installed temp matches ..0 if score $vdev temp matches 1.. run tellraw @s [{"text":"[Playtracker]", "color": "aqua"}, {"text": " Module ", "color": "red"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "temp"}}]}, {"text": "-dev", "color": "gold", "extra": [{"score": {"name": "$vdev", "objective": "temp"}}]}, {"text": " is active but not installed.", "color": "red"}, {"text": "  [Install]", "color": "green", "hoverEvent": {"action": "show_text", "value": {"text": "Install", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/function playtracker:module/install"}}]
