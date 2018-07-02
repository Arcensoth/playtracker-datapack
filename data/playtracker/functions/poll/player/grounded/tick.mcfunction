# playtracker:poll/player/grounded/tick

# Grounded players may become airborne.
tag @s[tag=playtracker.grounded.stopped] remove playtracker.grounded.stopped
execute if entity @s[tag=playtracker.grounded,nbt={OnGround:0b}] run function playtracker:poll/player/grounded/stop

# Airborne players may become grounded.
tag @s[tag=playtracker.grounded.started] remove playtracker.grounded.started
execute if entity @s[tag=!playtracker.grounded,nbt={OnGround:1b}] run function playtracker:poll/player/grounded/start
