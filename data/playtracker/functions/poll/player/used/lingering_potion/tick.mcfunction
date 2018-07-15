# playtracker:poll/player/used/lingering_potion/tick

tag @s[tag=playtracker.used.lingering_potion] remove playtracker.used.lingering_potion
execute if entity @s[scores={ptrak.uselinpot=1..}] run function playtracker:poll/player/used/lingering_potion/update
