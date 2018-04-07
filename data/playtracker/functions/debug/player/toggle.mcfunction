# playtracker:debug/player/toggle

tag @s[tag=playtracker.debug] add playtracker.temp.had_debug

execute as @s[tag=playtracker.temp.had_debug] run function playtracker:debug/player/disable
execute as @s[tag=!playtracker.temp.had_debug] run function playtracker:debug/player/enable

tag @s[tag=playtracker.temp.had_debug] remove playtracker.temp.had_debug
