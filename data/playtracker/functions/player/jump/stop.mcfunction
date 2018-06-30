# playtracker:player/jump/stop

# add jumping-stopped tag
tag @s add playtracker.jumping.stopped

# remove jumping tag
tag @s remove playtracker.jumping

# emit jumping-stopped event
function #playtracker:hooks/player/jumping/stopped
