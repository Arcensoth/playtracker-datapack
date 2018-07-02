# playtracker:poll/player/talked_to_villager/proc

tag @s add playtracker.talked_to_villager
scoreboard players set @s ptrak_talkvlgr 0
function #playtracker:hooks/player/talked_to_villager
