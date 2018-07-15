# playtracker:poll/player/used/fishing_rod/tick

tag @s[tag=playtracker.used.fishing_rod] remove playtracker.used.fishing_rod
execute if entity @s[scores={ptrak.usefishrod=1..}] run function playtracker:poll/player/used/fishing_rod/update
