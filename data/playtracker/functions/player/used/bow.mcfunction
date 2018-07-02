# playtracker:player/used/bow

tag @s[tag=playtracker.used.bow] remove playtracker.used.bow
tag @s[tag=playtracker.used.bow.mainhand] remove playtracker.used.bow.mainhand
tag @s[tag=playtracker.used.bow.offhand] remove playtracker.used.bow.offhand

tag @s[scores={ptrak_usebow=1..}] add playtracker.used.bow
tag @s[tag=playtracker.used.bow,nbt={SelectedItem:{id:"minecraft:bow"}}] add playtracker.used.bow.mainhand
tag @s[tag=playtracker.used.bow,nbt={Inventory:[{id:"minecraft:bow",Slot:-106b}]}] add playtracker.used.bow.offhand

scoreboard players set @s ptrak_usebow 0

execute if entity @s[tag=playtracker.used.bow] run function #playtracker:hooks/player/used/bow
execute if entity @s[tag=playtracker.used.bow.mainhand] run function #playtracker:hooks/player/used/bow/mainhand
execute if entity @s[tag=playtracker.used.bow.offhand] run function #playtracker:hooks/player/used/bow/offhand
