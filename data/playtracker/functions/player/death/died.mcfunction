# playtracker:player/death/died

# reset death timer
scoreboard players set @s ptrak_deathtime 0

# add died tag
tag @s add playtracker.died

# add dead tag
tag @s add playtracker.dead

# emit died event
function #playtracker:hooks/player/died
