# playtracker:module/about

function playtracker:module/values

tellraw @s [{"text":"[Playtracker]", "color": "aqua"}, {"text": " #### Playtracker ####", "color": "light_purple"}]

tellraw @s [{"text":"[Playtracker]", "color": "aqua"}, {"text": " Player action tracking with event hooks.", "color": "gray"}]

execute if score $vdev temp matches ..0 run tellraw @s [{"text":"[Playtracker]", "color": "aqua"}, {"text": " v", "color": "dark_gray", "extra": [{"score": {"name": "$vmajor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "temp"}}]}, {"text": " for Minecraft 1.13", "color": "dark_gray"}]
execute if score $vdev temp matches 1.. run tellraw @s [{"text":"[Playtracker]", "color": "aqua"}, {"text": " v", "color": "dark_gray", "extra": [{"score": {"name": "$vmajor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "temp"}}]}, {"text": "-dev", "color": "dark_gray", "extra": [{"score": {"name": "$vdev", "objective": "temp"}}]}, {"text": " for Minecraft 1.13", "color": "dark_gray"}]

tellraw @s [{"text":"[Playtracker]", "color": "aqua"}, {"text": " Authors:", "color": "gray"}]
function playtracker:module/api/authors

function playtracker:module/api/extras
