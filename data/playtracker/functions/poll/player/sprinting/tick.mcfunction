# playtracker:poll/player/sprinting/tick

tag @s[scores={ptrak_sprflag=1..}] add playtracker.poll.sprinting
execute if entity @s[tag=playtracker.poll.sprinting] run function playtracker:poll/player/sprinting/update
