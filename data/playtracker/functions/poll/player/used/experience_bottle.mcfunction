# playtracker:poll/player/used/experience_bottle

tag @s[tag=playtracker.used.experience_bottle] remove playtracker.used.experience_bottle
tag @s[scores={ptrak.usexpbot=1..}] add playtracker.used.experience_bottle
scoreboard players set @s ptrak.usexpbot 0
execute if entity @s[tag=playtracker.used.experience_bottle] run function #playtracker:hooks/player/used/experience_bottle
