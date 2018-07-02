# playtracker:poll/player/dead/tick

tag @s[scores={ptrak_sincedeath=0}] add playtracker.temp.poll.player.dead.update
tag @s[tag=playtracker.dead] add playtracker.temp.poll.player.dead.update

execute if entity @s[tag=playtracker.temp.poll.player.dead.update] run function playtracker:poll/player/dead/update
