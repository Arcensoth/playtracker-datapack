# playtracker:player/used/fishing_rod

tag @s[tag=playtracker.used.fishing_rod] remove playtracker.used.fishing_rod
tag @s[scores={ptrak_usefishrod=1..}] add playtracker.used.fishing_rod
scoreboard players set @s ptrak_usefishrod 0
execute if entity @s[tag=playtracker.used.fishing_rod] run function #playtracker:hooks/player/used/fishing_rod
