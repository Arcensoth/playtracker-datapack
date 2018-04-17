# playtracker:player/use/egg

tag @s[tag=playtracker.used.egg] remove playtracker.used.egg
tag @s[scores={ptrak_useegg=1..}] add playtracker.used.egg
scoreboard players set @s ptrak_useegg 0
execute if entity @s[tag=playtracker.used.egg] run function #playtracker:hooks/player/used/egg
