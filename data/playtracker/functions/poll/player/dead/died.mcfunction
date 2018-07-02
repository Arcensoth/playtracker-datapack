# playtracker:poll/player/dead/died

tag @s add playtracker.died
tag @s add playtracker.dead
scoreboard players set @s ptrak_deathtime 0
function #playtracker:hooks/player/died
