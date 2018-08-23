# playtracker:module/install

execute store success score $installed temp if score $installed ptrak.module matches 1..
execute if score $installed temp matches 1.. run tellraw @s [{"text":"[Playtracker]", "color": "aqua"}, {"text": " Module already installed.", "color": "white"}]
execute unless score $installed temp matches 1.. run function playtracker:module/forceinstall
