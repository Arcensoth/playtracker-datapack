# playtracker:player/used/snowball

tag @s[tag=playtracker.used.snowball] remove playtracker.used.snowball
tag @s[scores={ptrak_usesnoball=1..}] add playtracker.used.snowball
scoreboard players set @s ptrak_usesnoball 0
execute if entity @s[tag=playtracker.used.snowball] run function #playtracker:hooks/player/used/snowball
