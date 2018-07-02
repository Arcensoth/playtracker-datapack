# playtracker:poll/player/sprinting/tick

tag @s[scores={ptrak_sprflag=1..}] add playtracker.temp.poll.player.sprinting.update
tag @s[tag=playtracker.sprinting] add playtracker.temp.poll.player.sprinting.update

execute if entity @s[tag=playtracker.temp.poll.player.sprinting.update] run function playtracker:poll/player/sprinting/update
