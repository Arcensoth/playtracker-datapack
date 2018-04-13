# playtracker:module/install

function playtracker:module/api/setup

scoreboard objectives add ptrak_module dummy
scoreboard players set $installed ptrak_module 1

function playtracker:module/version

scoreboard players operation $vmajor ptrak_module = $vmajor smf_temp
scoreboard players operation $vminor ptrak_module = $vminor smf_temp
scoreboard players operation $vpatch ptrak_module = $vpatch smf_temp
scoreboard players operation $vdev ptrak_module = $vdev smf_temp

tellraw @a[tag=smf.admin] [{"text": "[Playtracker]", "color": "aqua"}, {"text": " Module has been ", "color": "white"}, {"text": "installed", "color": "green"}, {"text": ".", "color": "white"}]

playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2 0.5

function playtracker:module/scan
