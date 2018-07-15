# playtracker:poll/player/used/lingering_potion/update

tag @s add playtracker.used.lingering_potion
scoreboard players set @s ptrak.uselinpot 0
function #playtracker:hooks/player/used/lingering_potion
