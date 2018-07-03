# playtracker:poll/player/sneaking/tick

# We can optimize: there's no point in updating our sneaking status if we've not been sneaking.

# If my sneaking flag is set, begin polling by applying the polling tag (`playtracker.poll.sneaking`).
tag @s[scores={ptrak_snkflag=1..}] add playtracker.poll.sneaking

# Functions behind the optimization barrier will proceed to add/remove the polling tag accordingly.
execute if entity @s[tag=playtracker.poll.sneaking] run function playtracker:poll/player/sneaking/update
