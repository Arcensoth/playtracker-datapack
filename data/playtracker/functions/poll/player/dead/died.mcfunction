# playtracker:poll/player/dead/died

scoreboard players set @s ptrak_deathtime 0
tag @s add playtracker.died
tag @s add playtracker.dead
function #playtracker:hooks/player/died
