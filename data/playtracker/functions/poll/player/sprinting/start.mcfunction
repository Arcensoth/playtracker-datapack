# playtracker:poll/player/sprinting/start

tag @s add playtracker.sprinting.started
tag @s add playtracker.sprinting
scoreboard players set @s ptrak_sprcur 0
function #playtracker:hooks/player/sprinting/started
