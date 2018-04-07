# playtracker:module/install

scoreboard objectives add ptrak_module dummy
scoreboard players set $installed ptrak_module 1
scoreboard players set $vmajor ptrak_module 0
scoreboard players set $vminor ptrak_module 0
scoreboard players set $vpatch ptrak_module 0

function playtracker:module/api/setup

tellraw @s [{"text":"[Playtracker]", "color": "aqua"}, {"text": " Module version ", "color": "white"}, {"text": "", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "ptrak_module"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "ptrak_module"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "ptrak_module"}}]}, {"text": " installed!", "color": "white"}]
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2 0.5

function playtracker:module/validate
