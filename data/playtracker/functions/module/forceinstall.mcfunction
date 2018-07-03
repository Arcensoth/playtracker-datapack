# playtracker:module/forceinstall

scoreboard objectives add temp dummy

function playtracker:module/api/setup

scoreboard objectives add ptrak.module dummy
scoreboard players set $installed ptrak.module 1

function playtracker:module/values

scoreboard players operation $vmajor ptrak.module = $vmajor temp
scoreboard players operation $vminor ptrak.module = $vminor temp
scoreboard players operation $vpatch ptrak.module = $vpatch temp
scoreboard players operation $vdev ptrak.module = $vdev temp

tellraw @s [{"text": "[Playtracker]", "color": "aqua"}, {"text": " Module has been ", "color": "white"}, {"text": "installed", "color": "green"}, {"text": ".", "color": "white"}]

playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2 0.5

function playtracker:module/scan
