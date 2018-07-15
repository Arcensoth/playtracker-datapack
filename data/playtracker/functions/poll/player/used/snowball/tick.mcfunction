# playtracker:poll/player/used/snowball/tick

tag @s[tag=playtracker.used.snowball] remove playtracker.used.snowball
execute if entity @s[scores={ptrak.usesnoball=1..}] run function playtracker:poll/player/used/snowball/update
