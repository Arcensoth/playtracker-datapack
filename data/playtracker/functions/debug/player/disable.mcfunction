# playtracker:debug/player/disable

tag @s remove playtracker.debug

tellraw @s [{"text": "[Playtracker]", "color": "aqua"}, {"text": " Debugging ", "color": "white"}, {"text": "disabled", "color": "red"}, {"text": ".", "color": "white"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
