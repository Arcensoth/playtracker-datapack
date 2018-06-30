# v0.0.7-dev
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
