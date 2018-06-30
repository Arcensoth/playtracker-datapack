# playtracker:handles/player/respawned

tellraw @s[tag=playtracker.debug] [{"text": "[playtracker:handles/player/respawned] Respawned! Dead for ", "color": "gray"}, {"score": {"objective": "ptrak_deathtime", "name": "@s"}}, {"text": " ticks."}]
