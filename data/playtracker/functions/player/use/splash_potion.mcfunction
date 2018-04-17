# playtracker:player/use/splash_potion

tag @s[tag=playtracker.used.splash_potion] remove playtracker.used.splash_potion
tag @s[scores={ptrak_usesplpot=1..}] add playtracker.used.splash_potion
scoreboard players set @s ptrak_usesplpot 0
execute if entity @s[tag=playtracker.used.splash_potion] run function #playtracker:hooks/player/used/splash_potion
