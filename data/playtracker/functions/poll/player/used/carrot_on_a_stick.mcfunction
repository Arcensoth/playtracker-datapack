# playtracker:poll/player/used/carrot_on_a_stick

tag @s[tag=playtracker.used.carrot_on_a_stick] remove playtracker.used.carrot_on_a_stick
tag @s[scores={ptrak.usecoas=1..}] add playtracker.used.carrot_on_a_stick
scoreboard players set @s ptrak.usecoas 0
execute if entity @s[tag=playtracker.used.carrot_on_a_stick] run function #playtracker:hooks/player/used/carrot_on_a_stick
