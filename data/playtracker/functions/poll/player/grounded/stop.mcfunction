# playtracker:poll/player/grounded/stop

# add grounded-stopped tag and remove grounded tag
tag @s add playtracker.grounded.stopped
tag @s remove playtracker.grounded

# emit grounded-stopped event
function #playtracker:hooks/player/grounded/stopped
