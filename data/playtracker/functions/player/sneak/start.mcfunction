# playtracker:player/sneak/start

# reset sneak counter
scoreboard players set @s ptrak_snkcur 0

# add sneak-start tag
tag @s add playtracker.sneaking.started

# add sneaking tag
tag @s add playtracker.sneaking

# emit sneaking-started event
function #playtracker:hooks/player/sneaking/started
