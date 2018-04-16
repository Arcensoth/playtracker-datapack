# playtracker:module/install

execute if score $installed ptrak_module matches 1.. run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["playtracker.temp.installed"]}
execute unless entity @e[tag=playtracker.temp.installed] run function playtracker:module/forceinstall
execute if entity @e[tag=playtracker.temp.installed] run tellraw @s [{"text":"[Playtracker]", "color": "aqua"}, {"text": " Module already installed.", "color": "white"}]
kill @e[tag=playtracker.temp.installed]
