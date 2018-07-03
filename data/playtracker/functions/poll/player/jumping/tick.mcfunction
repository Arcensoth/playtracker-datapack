# playtracker:poll/player/jumping/tick

tag @s[scores={ptrak_jumpflag=1..}] add playtracker.poll.jumping
execute if entity @s[tag=playtracker.poll.jumping] run function playtracker:poll/player/jumping/update
