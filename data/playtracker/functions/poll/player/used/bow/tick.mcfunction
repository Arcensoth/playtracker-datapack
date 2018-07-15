# playtracker:poll/player/used/bow/tick

tag @s[tag=playtracker.used.bow] remove playtracker.used.bow
tag @s[tag=playtracker.used.bow.mainhand] remove playtracker.used.bow.mainhand
tag @s[tag=playtracker.used.bow.offhand] remove playtracker.used.bow.offhand

execute if entity @s[scores={ptrak.usebow=1..}] run function playtracker:poll/player/used/bow/update
