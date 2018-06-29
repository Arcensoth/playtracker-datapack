# Playtracker
Player action tracking with event hooks.

Field           | Value
--------------- | -----
Category        | Utility
Namespace       | `playtracker`
Prefix          | `ptrak`

## Scoreboard objectives
Objective           | Criteria                                      | Usage     | Description
------------------- | --------------------------------------------- | --------- | -----------
`ptrak_module`      | `dummy`                                       | Read-only | Reserved for SMF.
`ptrak_snktot`      | `minecraft.custom:minecraft.sneak_time`       | Read-only | The total number of ticks the player has snuck for. A perfect mirror of `minecraft.sneak_time` since instantiation.
`ptrak_snkflag`     | `minecraft.custom:minecraft.sneak_time`       | Read-only | Shadows `minecraft.sneak_time` to produce a transient flag for detecting sneak state each tick. **For internal use only.** Use `ptrak_snkcount` and/or [tags](#entity_tags) appropriately in dependent modules.
`ptrak_snkcur`      | `dummy`                                       | Read-only | The duration in ticks of the player's current (or most recent) sneak. Resets each time the player begins sneaking, and can thus be used to retrieve the duration of the most recent sneak.
`ptrak_sprtot`      | `minecraft.custom:minecraft.sprint_one_cm`    | Read-only | Similar to `ptrak_snktot` but for sprinting.
`ptrak_sprflag`     | `minecraft.custom:minecraft.sprint_one_cm`    | Read-only | Similar to `ptrak_snkflag` but for sprinting.
`ptrak_sprcur`      | `dummy`                                       | Read-only | Similar to `ptrak_snkcur` but for sprinting.
`ptrak_usebow`      | `minecraft.used:minecraft.bow`                | Read-only | Flag variable for bow usage. Prefer to use the `playtracker.used.bow` [entity tags](#entity-tags).
`ptrak_usecoas`     | `minecraft.used:minecraft.carrot_on_a_stick`  | Read-only | Flag variable for carrot on a stick usage. Prefer to use the `playtracker.used.carrot_on_a_stick` [entity tag](#entity-tags).
`ptrak_useegg`      | `minecraft.used:minecraft.egg`                | Read-only | Flag variable for egg usage. Prefer to use the `playtracker.used.egg` [entity tag](#entity-tags).
`ptrak_usepearl`    | `minecraft.used:minecraft.ender_pearl`        | Read-only | Flag variable for ender pearl usage. Prefer to use the `playtracker.used.ender_pearl` [entity tag](#entity-tags).
`ptrak_usexpbot`    | `minecraft.used:minecraft.experience_bottle`  | Read-only | Flag variable for experience bottle usage. Prefer to use the `playtracker.used.experience_bottle` [entity tag](#entity-tags).
`ptrak_usefishrod`  | `minecraft.used:minecraft.fishing_rod`        | Read-only | Flag variable for fishing rod usage. Prefer to use the `playtracker.used.fishing_rod` [entity tags](#entity-tags).
`ptrak_uselinpot`   | `minecraft.used:minecraft.lingering_potion`   | Read-only | Flag variable for lingering potion usage. Prefer to use the `playtracker.used.lingering_potion` [entity tag](#entity-tags).
`ptrak_usesnoball`  | `minecraft.used:minecraft.snowball`           | Read-only | Flag variable for snowball usage. Prefer to use the `playtracker.used.snowball` [entity tag](#entity-tags).
`ptrak_usesplpot`   | `minecraft.used:minecraft.splash_potion`      | Read-only | Flag variable for splash potion usage. Prefer to use the `playtracker.used.splash_potion` [entity tag](#entity-tags).

## Entity tags
Tag                                     | Description
--------------------------------------- | -----------
`playtracker.debug`                     | Present on players who are debugging the module.
`playtracker.ignore`                    | Present on players who are not being tracked.
`playtracker.sneaking`                  | Present on players who are currently sneaking.
`playtracker.sneaking.started`          | Present on players for a single tick when they start sneaking.
`playtracker.sneaking.stopped`          | Present on players for a single tick when they stop sneaking.
`playtracker.sprinting`                 | Present on players who are currently sprinting.
`playtracker.sprinting.started`         | Present on players for a single tick when they start sprinting.
`playtracker.sprinting.stopped`         | Present on players for a single tick when they stop sprinting.
`playtracker.used.bow`                  | Present on players for a single tick when they use a bow.
`playtracker.used.bow.mainhand`         | Present on players for a single tick when they use a bow in their mainhand.
`playtracker.used.bow.offhand`          | Present on players for a single tick when they use a bow in their offhand.
`playtracker.used.carrot_on_a_stick`    | Present on players for a single tick when they use a carrot on a stick.
`playtracker.used.egg`                  | Present on players for a single tick when they use an egg.
`playtracker.used.ender_pearl`          | Present on players for a single tick when they use an ender pearl.
`playtracker.used.experience_bottle`    | Present on players for a single tick when they use an experience bottle.
`playtracker.used.fishing_rod`          | Present on players for a single tick when they use a fishing rod.
`playtracker.used.lingering_potion`     | Present on players for a single tick when they use a lingering potion.
`playtracker.used.snowball`             | Present on players for a single tick when they use a snowball.
`playtracker.used.splash_potion`        | Present on players for a single tick when they use a splash potion.

## Event hooks
Function tag                                        | Description
--------------------------------------------------- | -----------
`#playtracker:hooks/player/dealt_damage`            | Run by a player when they deal damage.
`#playtracker:hooks/player/dealt_damage/melee`      | Run by a player when they deal melee damage.
`#playtracker:hooks/player/sneaking/started`        | Run by a player when they start sneaking.
`#playtracker:hooks/player/sneaking/stopped`        | Run by a player when they stop sneaking.
`#playtracker:hooks/player/sprinting/started`       | Run by a player when they start sprinting.
`#playtracker:hooks/player/sprinting/stopped`       | Run by a player when they stop sprinting.
`#playtracker:hooks/player/used/bow`                | Run by a player when they use a bow.
`#playtracker:hooks/player/used/bow/mainhand`       | Run by a player when they use a bow from their mainhand.
`#playtracker:hooks/player/used/bow/offhand`        | Run by a player when they use a bow from their offhand.
`#playtracker:hooks/player/used/carrot_on_a_stick`  | Run by a player when they use a carrot on a stick.
`#playtracker:hooks/player/used/egg`                | Run by a player when they use an egg.
`#playtracker:hooks/player/used/ender_pearl`        | Run by a player when they use an ender pearl.
`#playtracker:hooks/player/used/experience_bottle`  | Run by a player when they use an experience bottle.
`#playtracker:hooks/player/used/fishing_rod`        | Run by a player when they use a fishing rod.
`#playtracker:hooks/player/used/lingering_potion`   | Run by a player when they use a lingering potion.
`#playtracker:hooks/player/used/snowball`           | Run by a player when they use a snowball.
`#playtracker:hooks/player/used/splash_potion`      | Run by a player when they use a splash potion.
