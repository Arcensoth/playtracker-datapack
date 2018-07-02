# playtracker:poll/player/sneaking/tick

# We can optimize: there's no point in updating our sneaking status if we've not been sneaking.

tag @s[scores={ptrak_snkflag=1..}] add playtracker.temp.poll.player.sneaking.update
tag @s[tag=playtracker.sneaking] add playtracker.temp.poll.player.sneaking.update

execute if entity @s[tag=playtracker.temp.poll.player.sneaking.update] run function playtracker:poll/player/sneaking/update
