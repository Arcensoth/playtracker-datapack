# playtracker:player/sneaking/tick

# Right now: if I'm sneaking, my sneak flag (`ptrak_snkflag`) will have incremented to `1`. Otherwise it will remain at `0`.

# Always remove any existing sneaking-started tag before potential reapplication.
tag @s[tag=playtracker.sneaking.started] remove playtracker.sneaking.started

# If I'm sneaking but don't yet have the sneak tag (`playtracker.sneaking`), I must have just started sneaking.
execute as @s[tag=!playtracker.sneaking,scores={ptrak_snkflag=1..}] run function playtracker:player/sneaking/start

# Same logic as for the sneaking-started tag but for sneaking-stopped.
tag @s[tag=playtracker.sneaking.stopped] remove playtracker.sneaking.stopped

# If I'm not sneaking but still have the sneak tag, I must have just stopped sneaking.
execute as @s[tag=playtracker.sneaking,scores={ptrak_snkflag=0}] run function playtracker:player/sneaking/stop

# Reset my sneak flag so it can be detected again next tick.
scoreboard players set @s ptrak_snkflag 0

# From here on out, we should use the sneak tag to detect sneaking (instead of the sneak flag).

# Increment the sneak counter (`ptrak_snkcur`) of sneaking players.
scoreboard players add @s[tag=playtracker.sneaking] ptrak_snkcur 1
