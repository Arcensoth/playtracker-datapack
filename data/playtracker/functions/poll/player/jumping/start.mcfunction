# playtracker:poll/player/jumping/start

scoreboard players set @s ptrak_jumptime 0
tag @s add playtracker.jumping.started
tag @s add playtracker.jumping
function #playtracker:hooks/player/jumping/started
