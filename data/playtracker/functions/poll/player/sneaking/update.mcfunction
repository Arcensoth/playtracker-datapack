# playtracker:poll/player/sneaking/update

# Right now: if I'm sneaking, my sneak flag (`ptrak.snkflag`) will have incremented to `1`. Otherwise it will remain at `0`.

# Always remove any existing sneaking-started tag before potential reapplication.
tag @s[tag=playtracker.sneaking.started] remove playtracker.sneaking.started

# If I'm sneaking but don't yet have the sneak tag (`playtracker.sneaking`), I must have just started sneaking.
execute if entity @s[tag=!playtracker.sneaking,scores={ptrak.snkflag=1..}] run function playtracker:poll/player/sneaking/start

# If last time I stopped sneaking, and I'm still not sneaking, remove the polling tag.
tag @s[tag=playtracker.sneaking.stopped,tag=!playtracker.sneaking] remove playtracker.poll.sneaking

# Same logic as for the sneaking-started tag but for sneaking-stopped.
tag @s[tag=playtracker.sneaking.stopped] remove playtracker.sneaking.stopped

# If I'm not sneaking but still have the sneak tag, I must have just stopped sneaking.
execute if entity @s[tag=playtracker.sneaking,scores={ptrak.snkflag=0}] run function playtracker:poll/player/sneaking/stop

# From here on out, we should use the sneak tag to detect sneaking (instead of the sneak flag).

# Increment the sneak counter (`ptrak.snkcur`) of sneaking players.
scoreboard players add @s[tag=playtracker.sneaking] ptrak.snkcur 1

# Reset my sneak flag so it can be detected again next update.
scoreboard players set @s ptrak.snkflag 0
