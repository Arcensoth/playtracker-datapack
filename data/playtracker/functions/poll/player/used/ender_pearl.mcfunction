# playtracker:poll/player/used/ender_pearl

tag @s[tag=playtracker.used.ender_pearl] remove playtracker.used.ender_pearl
tag @s[scores={ptrak.usepearl=1..}] add playtracker.used.ender_pearl
scoreboard players set @s ptrak.usepearl 0
execute if entity @s[tag=playtracker.used.ender_pearl] run function #playtracker:hooks/player/used/ender_pearl
