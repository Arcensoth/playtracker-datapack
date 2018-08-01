# Playtracker
Player action tracking with event hooks.

Field       | Value
----------- | -----
Category    | Utility
Namespace   | `playtracker`
Scorespace  | `ptrak`

## Scoreboard
### Objectives
Objective           | Criteria                    | Usage     | Description
------------------- | --------------------------- | --------- | -----------
`ptrak.module`      | `dummy`                     | Read-only | Reserved for SMF.
`ptrak.sincedeath`  | `custom:time_since_death`   | Read-only | The number of ticks since the player's last death. A perfect mirror of `custom:time_since_death` since instantiation.
`ptrak.deathtime`   | `dummy`                     | Read-only | The duration in ticks of the players current (or most recent) death. Resets each time the player dies, and can thus be used to retrieve the duration of their most recent death.
`ptrak.sincerest`   | `custom:time_since_rest`    | Read-only | Similar to `ptrak.sincedeath` but for resting.
`ptrak.resttime`    | `dummy`                     | Read-only | Similar to `ptrak.deathtime` but for resting.
`ptrak.jumptot`     | `custom:jump`               | Read-only | The total number of jumps the player has taken. A perfect mirror of `custom:jump` since instantiation.
`ptrak.jumpflag`    | `custom:jump`               | Read-only | Shadows `custom:jump` to produce a transient flag for detecting sneak state each tick. **For internal use only.** Use `ptrak.snkcount` and/or [tags](#entity_tags) appropriately in dependent modules.
`ptrak.jumptime`    | `dummy`                     | Read-only | The duration in ticks of the players current (or most recent) jump. Resets each time the player jumps, and can thus be used to retrieve the duration of their most recent jump.
`ptrak.snktot`      | `custom:sneak_time`         | Read-only | The total number of ticks the player has snuck for. A perfect mirror of `custom:sneak_time` since instantiation.
`ptrak.snkflag`     | `custom:sneak_time`         | Read-only | Shadows `custom:sneak_time` to produce a transient flag for detecting sneak state each tick. **For internal use only.** Use `ptrak.snkcount` and/or [tags](#entity_tags) appropriately in dependent modules.
`ptrak.snkcur`      | `dummy`                     | Read-only | The duration in ticks of the player's current (or most recent) sneak. Resets each time the player begins sneaking, and can thus be used to retrieve the duration of their most recent sneak.
`ptrak.sprtot`      | `custom:sprint_one_cm`      | Read-only | Similar to `ptrak.snktot` but for sprinting.
`ptrak.sprflag`     | `custom:sprint_one_cm`      | Read-only | Similar to `ptrak.snkflag` but for sprinting.
`ptrak.sprcur`      | `dummy`                     | Read-only | Similar to `ptrak.snkcur` but for sprinting.
`ptrak.talkvlgr`    | `custom:talked_to_villager` | Read-only | Flag variable for talking to villagers. Prefer to use the `playtracker.talked_to_villager` [entity tag](#entity-tags).
`ptrak.usebow`      | `used:bow`                  | Read-only | Flag variable for bow usage. Prefer to use the `playtracker.used.bow` [entity tags](#entity-tags).
`ptrak.usecoas`     | `used:carrot_on_a_stick`    | Read-only | Flag variable for carrot on a stick usage. Prefer to use the `playtracker.used.carrot_on_a_stick` [entity tag](#entity-tags).
`ptrak.useegg`      | `used:egg`                  | Read-only | Flag variable for egg usage. Prefer to use the `playtracker.used.egg` [entity tag](#entity-tags).
`ptrak.usepearl`    | `used:ender_pearl`          | Read-only | Flag variable for ender pearl usage. Prefer to use the `playtracker.used.ender_pearl` [entity tag](#entity-tags).
`ptrak.usexpbot`    | `used:experience_bottle`    | Read-only | Flag variable for experience bottle usage. Prefer to use the `playtracker.used.experience_bottle` [entity tag](#entity-tags).
`ptrak.usefishrod`  | `used:fishing_rod`          | Read-only | Flag variable for fishing rod usage. Prefer to use the `playtracker.used.fishing_rod` [entity tags](#entity-tags).
`ptrak.uselinpot`   | `used:lingering_potion`     | Read-only | Flag variable for lingering potion usage. Prefer to use the `playtracker.used.lingering_potion` [entity tag](#entity-tags).
`ptrak.usesnoball`  | `used:snowball`             | Read-only | Flag variable for snowball usage. Prefer to use the `playtracker.used.snowball` [entity tag](#entity-tags).
`ptrak.usesplpot`   | `used:splash_potion`        | Read-only | Flag variable for splash potion usage. Prefer to use the `playtracker.used.splash_potion` [entity tag](#entity-tags).

## Entity Tags
Entity Tag                            | Description
------------------------------------- | -----------
`playtracker.debug`                   | Present on players who are debugging the module.
`playtracker.ignore`                  | Present on players who are not being tracked.
`playtracker.dead`                    | Present on players who are currently dead.
`playtracker.dead.started`            | Present on players for a single tick when they die.
`playtracker.dead.stopped`            | Present on players for a single tick when they respawn.
`playtracker.resting`                 | Present on players who are currently resting.
`playtracker.resting.started`         | Present on players for a single tick when they start resting.
`playtracker.resting.stopped`         | Present on players for a single tick when they stop resting.
`playtracker.dimension.overworld`     | Present on players who are currently in the overworld.
`playtracker.dimension.the_end`       | Present on players who are currently in the end.
`playtracker.dimension.the_nether`    | Present on players who are currently in the nether.
`playtracker.grounded`                | Present on players who are currently on the ground.
`playtracker.grounded.started`        | Present on players for a single tick when they hit the ground.
`playtracker.grounded.stopped`        | Present on players for a single tick when they leave the ground.
`playtracker.jumping`                 | Present on players for as long as they remain airborne after jumping.
`playtracker.jumping.started`         | Present on players for a single tick when they jump.
`playtracker.jumping.stopped`         | Present on players for a single tick when they land from a jump.
`playtracker.sneaking`                | Present on players who are currently sneaking.
`playtracker.sneaking.started`        | Present on players for a single tick when they start sneaking.
`playtracker.sneaking.stopped`        | Present on players for a single tick when they stop sneaking.
`playtracker.sprinting`               | Present on players who are currently sprinting.
`playtracker.sprinting.started`       | Present on players for a single tick when they start sprinting.
`playtracker.sprinting.stopped`       | Present on players for a single tick when they stop sprinting.
`playtracker.talked_to_villager`      | Present on players for a single tick when they talk to a villager.
`playtracker.used.bow`                | Present on players for a single tick when they use a bow.
`playtracker.used.bow.mainhand`       | Present on players for a single tick when they use a bow in their mainhand.
`playtracker.used.bow.offhand`        | Present on players for a single tick when they use a bow in their offhand.
`playtracker.used.carrot_on_a_stick`  | Present on players for a single tick when they use a carrot on a stick.
`playtracker.used.egg`                | Present on players for a single tick when they use an egg.
`playtracker.used.ender_pearl`        | Present on players for a single tick when they use an ender pearl.
`playtracker.used.experience_bottle`  | Present on players for a single tick when they use an experience bottle.
`playtracker.used.fishing_rod`        | Present on players for a single tick when they use a fishing rod.
`playtracker.used.lingering_potion`   | Present on players for a single tick when they use a lingering potion.
`playtracker.used.snowball`           | Present on players for a single tick when they use a snowball.
`playtracker.used.splash_potion`      | Present on players for a single tick when they use a splash potion.

## Event Hooks
Function Tag                                                  | Description
------------------------------------------------------------- | -----------
`#playtracker:hooks/player/blocked_damage`                    | Run by a player when they block damage.
`#playtracker:hooks/player/changed_dimension`                 | Run by a player when they change dimensions.
`#playtracker:hooks/player/changed_dimension/from/overworld`  | Run by a player when they leave the overworld.
`#playtracker:hooks/player/changed_dimension/from/the_end`    | Run by a player when they leave the end.
`#playtracker:hooks/player/changed_dimension/from/the_nether` | Run by a player when they leave the nether.
`#playtracker:hooks/player/changed_dimension/to/overworld`    | Run by a player when they enter the overworld.
`#playtracker:hooks/player/changed_dimension/to/the_end`      | Run by a player when they enter the end.
`#playtracker:hooks/player/changed_dimension/to/the_nether`   | Run by a player when they enter the nether.
`#playtracker:hooks/player/changed_effects`                   | Run by a player when their effects change.
`#playtracker:hooks/player/changed_inventory`                 | Run by a player when their inventory changes.
`#playtracker:hooks/player/consumed_item`                     | Run by a player when they consume an item.
`#playtracker:hooks/player/dead/started`                      | Run by a player when they die.
`#playtracker:hooks/player/dead/stopped`                      | Run by a player when they respawn.
`#playtracker:hooks/player/dealt_damage`                      | Run by a player when they deal damage.
`#playtracker:hooks/player/dealt_damage/explosion`            | Run by a player when they deal explosion damage.
`#playtracker:hooks/player/dealt_damage/fire`                 | Run by a player when they deal fire damage.
`#playtracker:hooks/player/dealt_damage/magic`                | Run by a player when they deal magic damage.
`#playtracker:hooks/player/dealt_damage/melee`                | Run by a player when they deal melee damage.
`#playtracker:hooks/player/dealt_damage/projectile`           | Run by a player when they deal projectile damage.
`#playtracker:hooks/player/grounded/started`                  | Run by a player when they leave the ground.
`#playtracker:hooks/player/grounded/stopped`                  | Run by a player when they hit the ground.
`#playtracker:hooks/player/jumping/started`                   | Run by a player when they jump.
`#playtracker:hooks/player/jumping/stopped`                   | Run by a player when they land from a jump.
`#playtracker:hooks/player/killed`                            | Run by a player when they kill something.
`#playtracker:hooks/player/killed/player`                     | Run by a player when they kill another player.
`#playtracker:hooks/player/placed_block`                      | Run by a player when they place a block.
`#playtracker:hooks/player/resting/started`                   | Run by a player when they start resting.
`#playtracker:hooks/player/resting/stopped`                   | Run by a player when they stop resting.
`#playtracker:hooks/player/sneaking/started`                  | Run by a player when they start sneaking.
`#playtracker:hooks/player/sneaking/stopped`                  | Run by a player when they stop sneaking.
`#playtracker:hooks/player/sprinting/started`                 | Run by a player when they start sprinting.
`#playtracker:hooks/player/sprinting/stopped`                 | Run by a player when they stop sprinting.
`#playtracker:hooks/player/talked_to_villager`                | Run by a player when they talk to a villager.
`#playtracker:hooks/player/took_damage`                       | Run by a player when they take damage.
`#playtracker:hooks/player/took_damage/explosion`             | Run by a player when they take explosion damage.
`#playtracker:hooks/player/took_damage/fire`                  | Run by a player when they take fire damage.
`#playtracker:hooks/player/took_damage/magic`                 | Run by a player when they take magic damage.
`#playtracker:hooks/player/took_damage/melee`                 | Run by a player when they take melee damage.
`#playtracker:hooks/player/took_damage/projectile`            | Run by a player when they take projectile damage.
`#playtracker:hooks/player/used/bow`                          | Run by a player when they use a bow.
`#playtracker:hooks/player/used/bow/mainhand`                 | Run by a player when they use a bow from their mainhand.
`#playtracker:hooks/player/used/bow/offhand`                  | Run by a player when they use a bow from their offhand.
`#playtracker:hooks/player/used/carrot_on_a_stick`            | Run by a player when they use a carrot on a stick.
`#playtracker:hooks/player/used/egg`                          | Run by a player when they use an egg.
`#playtracker:hooks/player/used/ender_pearl`                  | Run by a player when they use an ender pearl.
`#playtracker:hooks/player/used/experience_bottle`            | Run by a player when they use an experience bottle.
`#playtracker:hooks/player/used/fishing_rod`                  | Run by a player when they use a fishing rod.
`#playtracker:hooks/player/used/lingering_potion`             | Run by a player when they use a lingering potion.
`#playtracker:hooks/player/used/snowball`                     | Run by a player when they use a snowball.
`#playtracker:hooks/player/used/splash_potion`                | Run by a player when they use a splash potion.

## Performance Analysis
Count | Command
----- | -------
18p   | `function`
14p   | `tag @s[tag]`
10p   | `execute if entity @s[scores]`
7p    | `execute if entity @s[tag]`
5p    | `tag @s[scores]`
1     | `execute if entity @a[tag]`
1     | `execute as @a[tag] at @s run function`
