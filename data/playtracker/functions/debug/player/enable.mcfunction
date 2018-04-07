# playtracker:debug/player/enable

tag @s add playtracker.debug

tellraw @s [{"text": "[Playtracker]", "color": "aqua"}, {"text": " Debugging ", "color": "white"}, {"text": "enabled", "color": "green"}, {"text": ".", "color": "white"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
