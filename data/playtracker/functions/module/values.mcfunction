# playtracker:module/values

scoreboard players set $installed temp 0
scoreboard players operation $installed temp += $installed ptrak_module

function playtracker:module/version
