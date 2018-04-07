# playtracker:module/uninstall

scoreboard objectives remove ptrak_module

function playtracker:module/api/teardown

tellraw @s [{"text":"[Playtracker]", "color": "aqua"}, {"text": " Module uninstalled.", "color": "white"}]
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2 0.5
