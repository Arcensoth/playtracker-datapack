# playtracker:module/api/setup

# death
scoreboard objectives add ptrak.sincedeath minecraft.custom:minecraft.time_since_death
scoreboard objectives add ptrak.deathtime dummy

# rest
scoreboard objectives add ptrak.sincerest minecraft.custom:minecraft.time_since_rest
scoreboard objectives add ptrak.resttime dummy

# jumping
scoreboard objectives add ptrak.jumptot minecraft.custom:minecraft.jump
scoreboard objectives add ptrak.jumpflag minecraft.custom:minecraft.jump
scoreboard objectives add ptrak.jumptime dummy

# sneaking
scoreboard objectives add ptrak.snktot minecraft.custom:minecraft.sneak_time
scoreboard objectives add ptrak.snkflag minecraft.custom:minecraft.sneak_time
scoreboard objectives add ptrak.snkcur dummy

# sprinting
scoreboard objectives add ptrak.sprtot minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add ptrak.sprflag minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add ptrak.sprcur dummy

# talking to villagers
scoreboard objectives add ptrak.talkvlgr minecraft.custom:minecraft.talked_to_villager

# common item usage
scoreboard objectives add ptrak.usebow minecraft.used:minecraft.bow
scoreboard objectives add ptrak.usefishrod minecraft.used:minecraft.fishing_rod
scoreboard objectives add ptrak.usecoas minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add ptrak.usepearl minecraft.used:minecraft.ender_pearl
scoreboard objectives add ptrak.usesnoball minecraft.used:minecraft.snowball
scoreboard objectives add ptrak.useegg minecraft.used:minecraft.egg
scoreboard objectives add ptrak.usexpbot minecraft.used:minecraft.experience_bottle
scoreboard objectives add ptrak.usesplpot minecraft.used:minecraft.splash_potion
scoreboard objectives add ptrak.uselinpot minecraft.used:minecraft.lingering_potion
