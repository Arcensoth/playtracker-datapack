# playtracker:poll/player/resting/update

tag @s[tag=playtracker.resting.started] remove playtracker.resting.started
execute if entity @s[tag=!playtracker.resting,scores={ptrak.sincerest=0}] run function playtracker:poll/player/resting/start

tag @s[tag=playtracker.resting.stopped,tag=!playtracker.resting] remove playtracker.poll.resting

tag @s[tag=playtracker.resting.stopped] remove playtracker.resting.stopped
execute if entity @s[tag=playtracker.resting,scores={ptrak.sincerest=1..}] run function playtracker:poll/player/resting/stop

scoreboard players add @s[tag=playtracker.resting] ptrak.resttime 1
