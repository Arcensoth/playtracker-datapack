# playtracker:poll/player/jumping/start

# reset jump timer
scoreboard players set @s ptrak_jumptime 0

# add jumping-started tag
tag @s add playtracker.jumping.started

# add jumping tag
tag @s add playtracker.jumping

# emit jumping-started event
function #playtracker:hooks/player/jumping/started
