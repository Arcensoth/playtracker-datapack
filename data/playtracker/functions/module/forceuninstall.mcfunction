# playtracker:module/forceuninstall

scoreboard objectives remove ptrak.module

function playtracker:module/api/teardown

tellraw @s [{"text": "[Playtracker]", "color": "aqua"}, {"text": " Module has been ", "color": "white"}, {"text": "uninstalled", "color": "red"}, {"text": ".", "color": "white"}]

playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2 0.5
