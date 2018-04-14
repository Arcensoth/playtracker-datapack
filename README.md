# Playtracker
Player action tracking with event hooks.

Field           | Value
--------------- | -----
Category        | Utility
Namespace       | `playtracker`
Prefix          | `ptrak`

## Scoreboard objectives
Objective       | Criteria                                      | Usage     | Description
--------------- | --------------------------------------------- | --------- | -----------
`ptrak_module`  | `dummy`                                       | Read-only | Reserved for SMF.
`ptrak_snktot`  | `minecraft.custom:minecraft.sneak_time`       | Read-only | The total number of ticks the player has snuck for. A perfect mirror of `minecraft.sneak_time` since instantiation.
`ptrak_snkflag` | `minecraft.custom:minecraft.sneak_time`       | Read-only | Shadows `minecraft.sneak_time` to produce a transient flag for detecting sneak state each tick. **For internal use only.** Use `ptrak_snkcount` and/or [tags](#entity_tags) appropriately in dependent modules.
`ptrak_snkcur`  | `dummy`                                       | Read-only | The duration in ticks of the player's current (or most recent) sneak. Resets each time the player begins sneaking, and can thus be used to retrieve the duration of the most recent sneak.
`ptrak_sprtot`  | `minecraft.custom:minecraft.sprint_one_cm`    | Read-only | Similar to `ptrak_snktot` but for sprinting.
`ptrak_sprflag` | `minecraft.custom:minecraft.sprint_one_cm`    | Read-only | Similar to `ptrak_snkflag` but for sprinting.
`ptrak_sprcur`  | `dummy`                                       | Read-only | Similar to `ptrak_snkcur` but for sprinting.
`ptrak_bowflag` | `minecraft.used:minecraft.bow`                | Read-only | Flag variable for bow usage. Prefer to use the `playtracker.used.bow` [entity tags](#entity-tags).

## Entity tags
Tag                             | Description
------------------------------- | -----------
`playtracker.debug`             | Present on players who are debugging the module.
`playtracker.sneaking`          | Present on players who are currently sneaking.
`playtracker.sneaking.started`  | Present on players for a single tick when they start sneaking.
`playtracker.sneaking.stopped`  | Present on players for a single tick when they stop sneaking.
`playtracker.sprinting`         | Present on players who are currently sprinting.
`playtracker.sprinting.started` | Present on players for a single tick when they start sprinting.
`playtracker.sprinting.stopped` | Present on players for a single tick when they stop sprinting.
`playtracker.used.bow`          | Present on players for a single tick when they use (fire) a bow.
`playtracker.used.bow.mainhand` | Present on players for a single tick when they use (fire) a bow in their mainhand.
`playtracker.used.bow.offhand`  | Present on players for a single tick when they use (fire) a bow in their offhand.

## Event hooks
Function tag                                    | Description
----------------------------------------------- | -----------
`#playtracker:hooks/player/dealt_damage`        | Run by a player when they deal damage.
`#playtracker:hooks/player/dealt_damage/melee`  | Run by a player when they deal melee damage.
`#playtracker:hooks/player/sneaking/started`    | Run by a player when they start sneaking.
`#playtracker:hooks/player/sneaking/stopped`    | Run by a player when they stop sneaking.
`#playtracker:hooks/player/sprinting/started`   | Run by a player when they start sprinting.
`#playtracker:hooks/player/sprinting/stopped`   | Run by a player when they stop sprinting.
`#playtracker:hooks/player/used/bow`            | Run by a player when they use (fire) a bow.
`#playtracker:hooks/player/used/bow/mainhand`   | Run by a player when they use (fire) a bow from their mainhand.
`#playtracker:hooks/player/used/bow/offhand`    | Run by a player when they use (fire) a bow from their offhand.
