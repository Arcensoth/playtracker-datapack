# playtracker:player/jump/tick

# Always remove any existing jumping-started tag before potential reapplication.
tag @s[tag=playtracker.jumping.started] remove playtracker.jumping.started

# If I jumped but don't yet have the jumping tag (`playtracker.jumping`), I must have just jumped.
execute as @s[tag=!playtracker.jumping,scores={ptrak_jumpflag=1..}] run function playtracker:player/jump/start

# Same logic for potential reapplication of the jumping-stopped tag (`playtracker.jumping.stopped`).
tag @s[tag=playtracker.jumping.stopped] remove playtracker.jumping.stopped

# If I'm grounded but still have the jumping tag, I must have just landed.
execute as @s[tag=playtracker.jumping,nbt={OnGround:1b}] run function playtracker:player/jump/stop
# TODO execute as @s[tag=playtracker.jumping,tag=playertracker.grounded] run function playtracker:player/jump/stop

# Reset my jump flag so it can be detected again next tick.
scoreboard players set @s ptrak_jumpflag 0

# From here on out, we should use the jumping tag to detect jumping (instead of the jump flag).

# Increment the jump timer (`ptrak_jumptime`) of jumping players.
scoreboard players add @s[tag=playtracker.jumping] ptrak_jumptime 1
