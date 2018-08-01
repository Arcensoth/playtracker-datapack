# v0.0.10-dev
- Use SMF v0.7.0 (for real this time)

# v0.0.9
- Use SMF v0.7.0
  - Rename objectives to use `.` instead of `_` for namespace separator
- Add hooks for:
  - Changing dimensions
  - Sleeping started/stopped
- Add tags for:
  - Current dimension
  - Sleeping, sleeping started/stopped
- Optimize polling functions
- Make common actions more obvious while debugging
- Rename death events to be consistent with other naming conventions
- Add performance analysis to readme

# v0.0.8
- Rename `killed_entity` to just `killed`
- Rename/refactor a bunch of internal components
- Add tracking for:
  - Jumping and jump time
  - Grounded vs airborne
  - Player kills
  - Talking to villagers

# v0.0.7
- Allow players to be ignored
- Fix damage_dealt/melee hook not excluding explosion damage
- Add hooks for:
  - Dealing explosion/fire/magic/projectile damage
  - Taking explosion/fire/magic/melee/projectile damage
  - Blocking damage
  - Consuming an item
  - Changing effects
  - Changing inventory
  - Placing a block
  - Killing an entity
  - Dying and respawning
- Add tracking for death time (similar to sneaking/sprinting)

# v0.0.6
- Fix exponential player tick dispatch

# v0.0.5
- Add usage tracking for:
    - `egg`
- Remove bugged ender eye usage stat
    - Apparently there's no way to track number of ender eye throws, only portal frame placement

# v0.0.4
- Add usage tracking for:
    - `fishing_rod`
    - `carrot_on_a_stick`
    - `ender_pearl`
    - `ender_eye`
    - `snowball`
    - `experience_bottle`
    - `splash_potion`
    - `lingering_potion`

# v0.0.3
- Use SMF v0.6.0
- Add tracking for:
    - Bow usage (mainhand, offhand, either)

# v0.0.2
- Use SMF v0.2.0

# v0.0.1
- Initial release
- Use SMF v0.1.0
- Add tracking for:
    - Sneaking
    - Sprinting
    - Dealing any type of damage
    - Dealing melee damage
