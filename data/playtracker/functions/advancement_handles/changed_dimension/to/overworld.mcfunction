# playtracker:advancement_handles/changed_dimension/to/overworld

advancement revoke @s only playtracker:internal/changed_dimension/to/overworld

function playtracker:utils/player/clear_dimension
tag @s add playtracker.dimension.overworld

function #playtracker:hooks/player/changed_dimension/to/overworld
