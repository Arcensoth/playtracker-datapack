# playtracker:module/install

scoreboard objectives add ptrak_module dummy
scoreboard players set $installed ptrak_module 1

function playtracker:module/version

function playtracker:module/api/setup

tellraw @s [{"text":"[Playtracker]", "color": "aqua"}, {"text": " Module ", "color": "white"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "ptrak_module"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "ptrak_module"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "ptrak_module"}}]}, {"text": " installed!", "color": "white"}]

execute if score $vdev ptrak_module matches 1.. run tellraw @s [{"text":"[Playtracker]", "color": "aqua"}, {"text": " Running ", "color": "white"}, {"text": "development build #", "color": "light_purple", "extra": [{"score": {"name": "$vdev", "objective": "ptrak_module"}}]}, {"text": " of the module.", "color": "white"}]

playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2 0.5

function playtracker:module/validate
