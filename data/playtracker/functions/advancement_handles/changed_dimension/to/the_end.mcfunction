# playtracker:advancement_handles/changed_dimension/to/the_end

advancement revoke @s only playtracker:internal/changed_dimension/to/the_end

function playtracker:utils/player/clear_dimension
tag @s add playtracker.dimension.the_end

function #playtracker:hooks/player/changed_dimension/to/the_end
