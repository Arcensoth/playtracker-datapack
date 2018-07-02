# playtracker:poll/player/dead/tick

tag @s[tag=playtracker.died] remove playtracker.died
execute as @s[tag=!playtracker.dead,scores={ptrak_sincedeath=0}] run function playtracker:poll/player/dead/died
tag @s[tag=playtracker.respawned] remove playtracker.respawned
execute as @s[tag=playtracker.dead,scores={ptrak_sincedeath=1..}] run function playtracker:poll/player/dead/respawned
scoreboard players add @s[tag=playtracker.dead] ptrak_deathtime 1
