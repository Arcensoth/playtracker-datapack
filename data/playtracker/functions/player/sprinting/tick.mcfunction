# playtracker:player/sprinting/tick

# see sneak submodule for explanations

tag @s[tag=playtracker.sprinting.started] remove playtracker.sprinting.started
execute as @s[tag=!playtracker.sprinting,scores={ptrak_sprflag=1..}] run function playtracker:player/sprinting/start
tag @s[tag=playtracker.sprinting.stopped] remove playtracker.sprinting.stopped
execute as @s[tag=playtracker.sprinting,scores={ptrak_sprflag=0}] run function playtracker:player/sprinting/stop
scoreboard players set @s ptrak_sprflag 0
scoreboard players add @s[tag=playtracker.sprinting] ptrak_sprcur 1
