# playtracker:poll/player/used/experience_bottle/tick

tag @s[tag=playtracker.used.experience_bottle] remove playtracker.used.experience_bottle
execute if entity @s[scores={ptrak.usexpbot=1..}] run function playtracker:poll/player/used/experience_bottle/update
