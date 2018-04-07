# playtracker:module/api/tick

execute if entity @a[tag=playtracker.debug] run function playtracker:debug/tick

execute as @a at @a run function playtracker:player/tick
