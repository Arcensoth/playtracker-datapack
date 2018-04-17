# playtracker:player/use/ender_eye

tag @s[tag=playtracker.used.ender_eye] remove playtracker.used.ender_eye
tag @s[scores={ptrak_useeye=1..}] add playtracker.used.ender_eye
scoreboard players set @s ptrak_useeye 0
execute if entity @s[tag=playtracker.used.ender_eye] run function #playtracker:hooks/player/used/ender_eye
