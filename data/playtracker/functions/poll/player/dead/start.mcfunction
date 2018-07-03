# playtracker:poll/player/dead/start

tag @s add playtracker.dead.started
tag @s add playtracker.dead
scoreboard players set @s ptrak_deathtime 0
function #playtracker:hooks/player/dead/started
