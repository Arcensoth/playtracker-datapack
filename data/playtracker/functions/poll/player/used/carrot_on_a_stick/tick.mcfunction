# playtracker:poll/player/used/carrot_on_a_stick/tick

tag @s[tag=playtracker.used.carrot_on_a_stick] remove playtracker.used.carrot_on_a_stick
tag @s[tag=playtracker.used.carrot_on_a_stick.mainhand] remove playtracker.used.carrot_on_a_stick.mainhand
tag @s[tag=playtracker.used.carrot_on_a_stick.offhand] remove playtracker.used.carrot_on_a_stick.offhand

execute if entity @s[scores={ptrak.usecoas=1..}] run function playtracker:poll/player/used/carrot_on_a_stick/update
