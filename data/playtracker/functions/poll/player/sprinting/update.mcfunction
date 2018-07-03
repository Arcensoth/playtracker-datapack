# playtracker:poll/player/sprinting/update

tag @s[tag=playtracker.sprinting.started] remove playtracker.sprinting.started
execute if entity @s[tag=!playtracker.sprinting,scores={ptrak_sprflag=1..}] run function playtracker:poll/player/sprinting/start

tag @s[tag=playtracker.sprinting.stopped,tag=!playtracker.sprinting] remove playtracker.poll.sprinting

tag @s[tag=playtracker.sprinting.stopped] remove playtracker.sprinting.stopped
execute if entity @s[tag=playtracker.sprinting,scores={ptrak_sprflag=0}] run function playtracker:poll/player/sprinting/stop

scoreboard players add @s[tag=playtracker.sprinting] ptrak_sprcur 1

scoreboard players set @s ptrak_sprflag 0
