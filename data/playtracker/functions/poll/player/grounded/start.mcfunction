# playtracker:poll/player/grounded/start

# add grounded-started and grounded tag
tag @s add playtracker.grounded.started
tag @s add playtracker.grounded

# emit grounded-started event
function #playtracker:hooks/player/grounded/started
