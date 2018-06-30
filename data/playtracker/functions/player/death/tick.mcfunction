# playtracker:player/death/tick

# Right now: if I'm dead, my life timer (`ptrak_sincedeath`) will be `0`. Otherwise it will be `1..`.

# Always remove any existing died tag (`playtracker.died`) before potential reapplication.
tag @s[tag=playtracker.died] remove playtracker.died

# If I'm dead but don't yet have the dead tag (`playtracker.dead`), I must have just died.
execute as @s[tag=!playtracker.dead,scores={ptrak_sincedeath=0}] run function playtracker:player/death/died

# Same logic for potential reapplication of the respawned tag (`playtracker.respawned`).
tag @s[tag=playtracker.respawned] remove playtracker.respawned

# If I'm not dead but still have the dead tag, I must have respawned.
execute as @s[tag=playtracker.dead,scores={ptrak_sincedeath=1..}] run function playtracker:player/death/respawned

# From here on out, we should use the dead tag to detect death (instead of the life timer).

# While dead, increment my death timer (`ptrak_deathtime`).
scoreboard players add @s[tag=playtracker.dead] ptrak_deathtime 1
