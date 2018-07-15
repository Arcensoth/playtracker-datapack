# playtracker:advancement_handles/changed_dimension/to/the_nether

advancement revoke @s only playtracker:internal/changed_dimension/to/the_nether

function playtracker:utils/player/clear_dimension
tag @s add playtracker.dimension.the_nether

function #playtracker:hooks/player/changed_dimension/to/the_nether
