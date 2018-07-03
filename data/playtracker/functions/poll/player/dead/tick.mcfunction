# playtracker:poll/player/dead/tick

tag @s[scores={ptrak_sincedeath=0}] add playtracker.poll.dead
execute if entity @s[tag=playtracker.poll.dead] run function playtracker:poll/player/dead/update
