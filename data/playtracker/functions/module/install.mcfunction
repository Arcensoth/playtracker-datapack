# playtracker:module/install

scoreboard objectives add temp dummy

function playtracker:module/api/setup

scoreboard objectives add ptrak_module dummy
scoreboard players set $installed ptrak_module 1

function playtracker:module/version

scoreboard players operation $vmajor ptrak_module = $vmajor temp
scoreboard players operation $vminor ptrak_module = $vminor temp
scoreboard players operation $vpatch ptrak_module = $vpatch temp
scoreboard players operation $vdev ptrak_module = $vdev temp

tellraw @a[tag=smf.admin] [{"text": "[Playtracker]", "color": "aqua"}, {"text": " Module has been ", "color": "white"}, {"text": "installed", "color": "green"}, {"text": ".", "color": "white"}]

playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2 0.5

function playtracker:module/scan
