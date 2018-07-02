# playtracker:poll/player/sneaking/start

# Manage sneaking tags.
tag @s add playtracker.sneaking.started
tag @s add playtracker.sneaking

# Start a new sneak counter.
scoreboard players set @s ptrak_snkcur 0

# Emit the sneaking-started event.
function #playtracker:hooks/player/sneaking/started
