# playtracker:poll/player/resting/start

tag @s add playtracker.resting.started
tag @s add playtracker.resting
scoreboard players set @s ptrak.resttime 0
function #playtracker:hooks/player/resting/started
