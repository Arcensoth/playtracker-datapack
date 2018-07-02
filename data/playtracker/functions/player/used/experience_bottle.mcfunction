# playtracker:player/used/experience_bottle

tag @s[tag=playtracker.used.experience_bottle] remove playtracker.used.experience_bottle
tag @s[scores={ptrak_usexpbot=1..}] add playtracker.used.experience_bottle
scoreboard players set @s ptrak_usexpbot 0
execute if entity @s[tag=playtracker.used.experience_bottle] run function #playtracker:hooks/player/used/experience_bottle
