# playtracker:poll/player/jumping/update

tag @s[tag=playtracker.jumping.started] remove playtracker.jumping.started
execute if entity @s[tag=!playtracker.jumping,scores={ptrak.jumpflag=1..}] run function playtracker:poll/player/jumping/start

tag @s[tag=playtracker.jumping.stopped,tag=!playtracker.jumping] remove playtracker.poll.jumping

tag @s[tag=playtracker.jumping.stopped] remove playtracker.jumping.stopped
execute if entity @s[tag=playtracker.jumping,tag=playtracker.grounded] run function playtracker:poll/player/jumping/stop

scoreboard players add @s[tag=playtracker.jumping] ptrak.jumptime 1

scoreboard players set @s ptrak.jumpflag 0
