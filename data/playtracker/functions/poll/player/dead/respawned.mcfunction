# playtracker:poll/player/dead/respawned

# add respawned tag
tag @s add playtracker.respawned

# remove dead tag
tag @s remove playtracker.dead

# emit respawned event
function #playtracker:hooks/player/respawned
