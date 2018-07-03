# playtracker:poll/player/dead/update

tag @s[tag=playtracker.dead.started] remove playtracker.dead.started
execute if entity @s[tag=!playtracker.dead,scores={ptrak_sincedeath=0}] run function playtracker:poll/player/dead/start

tag @s[tag=playtracker.dead.stopped,tag=!playtracker.dead] remove playtracker.poll.dead

tag @s[tag=playtracker.dead.stopped] remove playtracker.dead.stopped
execute if entity @s[tag=playtracker.dead,scores={ptrak_sincedeath=1..}] run function playtracker:poll/player/dead/stop

scoreboard players add @s[tag=playtracker.dead] ptrak_deathtime 1
