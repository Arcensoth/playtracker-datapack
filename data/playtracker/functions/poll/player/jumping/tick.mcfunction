# playtracker:poll/player/jumping/tick

tag @s[scores={ptrak_jumpflag=1..}] add playtracker.temp.poll.player.jumping.update
tag @s[tag=playtracker.jumping] add playtracker.temp.poll.player.jumping.update

execute if entity @s[tag=playtracker.temp.poll.player.jumping.update] run function playtracker:poll/player/jumping/update
