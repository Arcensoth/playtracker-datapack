# playtracker:poll/player/sneaking/stop

# Manage sneaking tags.
tag @s add playtracker.sneaking.stopped
tag @s remove playtracker.sneaking

# Emit the sneaking-stopped event.
function #playtracker:hooks/player/sneaking/stopped
