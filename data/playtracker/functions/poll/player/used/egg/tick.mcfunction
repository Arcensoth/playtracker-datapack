# playtracker:poll/player/used/egg/tick

tag @s[tag=playtracker.used.egg] remove playtracker.used.egg
execute if entity @s[scores={ptrak.useegg=1..}] run function playtracker:poll/player/used/egg/update
