# playtracker:player/sneak/stop

# add sneak-stop tag
tag @s add playtracker.sneaking.stopped

# remove sneaking tag
tag @s remove playtracker.sneaking

# emit sneak-stop event
function #playtracker:hooks/player/sneaking/stopped
