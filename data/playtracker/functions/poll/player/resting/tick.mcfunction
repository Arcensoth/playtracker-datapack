# playtracker:poll/player/resting/tick

tag @s[scores={ptrak.sincerest=0}] add playtracker.poll.resting
execute if entity @s[tag=playtracker.poll.resting] run function playtracker:poll/player/resting/update
