# playtracker:poll/player/jumping/update

tag @s remove playtracker.temp.poll.player.jumping.update

tag @s[tag=playtracker.jumping.started] remove playtracker.jumping.started
execute as @s[tag=!playtracker.jumping,scores={ptrak_jumpflag=1..}] run function playtracker:poll/player/jumping/start

tag @s[tag=playtracker.jumping.stopped] remove playtracker.jumping.stopped
execute as @s[tag=playtracker.jumping,tag=playtracker.grounded] run function playtracker:poll/player/jumping/stop

scoreboard players add @s[tag=playtracker.jumping] ptrak_jumptime 1

scoreboard players set @s ptrak_jumpflag 0
