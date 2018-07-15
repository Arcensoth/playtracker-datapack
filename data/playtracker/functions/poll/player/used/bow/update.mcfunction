# playtracker:poll/player/used/bow/update

tag @s add playtracker.used.bow
tag @s[nbt={SelectedItem:{id:"minecraft:bow"}}] add playtracker.used.bow.mainhand
tag @s[nbt={Inventory:[{id:"minecraft:bow",Slot:-106b}]}] add playtracker.used.bow.offhand

scoreboard players set @s ptrak.usebow 0

function #playtracker:hooks/player/used/bow
execute if entity @s[tag=playtracker.used.bow.mainhand] run function #playtracker:hooks/player/used/bow/mainhand
execute if entity @s[tag=playtracker.used.bow.offhand] run function #playtracker:hooks/player/used/bow/offhand
