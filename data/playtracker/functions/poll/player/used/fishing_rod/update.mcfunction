# playtracker:poll/player/used/fishing_rod/update

tag @s add playtracker.used.fishing_rod
scoreboard players set @s ptrak.usefishrod 0
function #playtracker:hooks/player/used/fishing_rod
