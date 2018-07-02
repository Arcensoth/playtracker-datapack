# playtracker:poll/player/sneaking/start

# Start a new sneak counter.
scoreboard players set @s ptrak_snkcur 0

# Manage sneaking tags.
tag @s add playtracker.sneaking.started
tag @s add playtracker.sneaking

# Emit the sneaking-started event.
function #playtracker:hooks/player/sneaking/started
