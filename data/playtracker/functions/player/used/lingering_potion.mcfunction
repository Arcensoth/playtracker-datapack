# playtracker:player/used/lingering_potion

tag @s[tag=playtracker.used.lingering_potion] remove playtracker.used.lingering_potion
tag @s[scores={ptrak_uselinpot=1..}] add playtracker.used.lingering_potion
scoreboard players set @s ptrak_uselinpot 0
execute if entity @s[tag=playtracker.used.lingering_potion] run function #playtracker:hooks/player/used/lingering_potion
