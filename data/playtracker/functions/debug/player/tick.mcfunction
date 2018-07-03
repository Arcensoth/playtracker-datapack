# playtracker:debug/player/tick

execute as @s[tag=playtracker.jumping.started] anchored eyes run particle minecraft:dragon_breath ^ ^ ^2 0 0 0 0.05 20

execute as @s[tag=!playtracker.grounded] anchored eyes run particle minecraft:effect ^ ^ ^2
execute as @s[tag=playtracker.sneaking] anchored eyes run particle minecraft:witch ^ ^ ^2
execute as @s[tag=playtracker.sprinting] anchored eyes run particle minecraft:totem_of_undying ^ ^ ^2
