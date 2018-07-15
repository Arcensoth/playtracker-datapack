# playtracker:poll/player/used/splash_potion/tick

tag @s[tag=playtracker.used.splash_potion] remove playtracker.used.splash_potion
execute if entity @s[scores={ptrak.usesplpot=1..}] run function playtracker:poll/player/used/splash_potion/update
