# playtracker:poll/player/jumping/start

tag @s add playtracker.jumping.started
tag @s add playtracker.jumping
scoreboard players set @s ptrak.jumptime 0
function #playtracker:hooks/player/jumping/started
