# playtracker:module/uninstall

execute if score $installed ptrak.module matches 1.. run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["playtracker.temp.installed"]}
execute unless entity @e[tag=playtracker.temp.installed] run tellraw @s [{"text":"[Playtracker]", "color": "aqua"}, {"text": " Module not installed.", "color": "white"}]
execute if entity @e[tag=playtracker.temp.installed] run function playtracker:module/forceuninstall
kill @e[tag=playtracker.temp.installed]
