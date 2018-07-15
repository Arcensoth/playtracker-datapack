# playtracker:poll/player/used/ender_pearl/tick

tag @s[tag=playtracker.used.ender_pearl] remove playtracker.used.ender_pearl
execute if entity @s[scores={ptrak.usepearl=1..}] run function playtracker:poll/player/used/ender_pearl/update
