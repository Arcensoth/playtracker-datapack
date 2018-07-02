# playtracker:poll/player/sprinting/start

scoreboard players set @s ptrak_sprcur 0
tag @s add playtracker.sprinting.started
tag @s add playtracker.sprinting
function #playtracker:hooks/player/sprinting/started
