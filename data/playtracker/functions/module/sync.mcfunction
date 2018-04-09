# playtracker:module/sync

function playtracker:module/version

scoreboard players set $sync smf_temp 0

execute if score $installed ptrak_module matches 1.. if score $vmajor ptrak_module = $vmajor smf_temp if score $vminor ptrak_module = $vminor smf_temp if score $vpatch ptrak_module = $vpatch smf_temp run scoreboard players set $sync smf_temp 1

execute if score $sync smf_temp matches 0 run tellraw @a[tag=smf.admin] [{"text": "[Playtracker]", "color": "aqua"}, {"text": " Oh no! Module ", "color": "red"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "ptrak_module"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "ptrak_module"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "ptrak_module"}}]}, {"text": " is installed but ", "color": "red"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "smf_temp"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "smf_temp"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "smf_temp"}}]}, {"text": " is active!", "color": "red"}]
