# playtracker:poll/player/used/splash_potion/update

tag @s add playtracker.used.splash_potion
scoreboard players set @s ptrak.usesplpot 0
function #playtracker:hooks/player/used/splash_potion
