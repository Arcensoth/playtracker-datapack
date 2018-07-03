# playtracker:poll/player/talked_to_villager/tick

tag @s[tag=playtracker.talked_to_villager] remove playtracker.talked_to_villager
execute if entity @s[scores={ptrak.talkvlgr=1..}] run function playtracker:poll/player/talked_to_villager/proc
