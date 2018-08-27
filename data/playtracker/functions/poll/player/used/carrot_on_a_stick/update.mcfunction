# playtracker:poll/player/used/carrot_on_a_stick/update

tag @s add playtracker.used.carrot_on_a_stick
tag @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] add playtracker.used.carrot_on_a_stick.mainhand
tag @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b}]}] add playtracker.used.carrot_on_a_stick.offhand

scoreboard players set @s ptrak.usecoas 0

function #playtracker:hooks/player/used/carrot_on_a_stick
execute if entity @s[tag=playtracker.used.carrot_on_a_stick.mainhand] run function #playtracker:hooks/player/used/carrot_on_a_stick/mainhand
execute if entity @s[tag=playtracker.used.carrot_on_a_stick.offhand] run function #playtracker:hooks/player/used/carrot_on_a_stick/offhand
