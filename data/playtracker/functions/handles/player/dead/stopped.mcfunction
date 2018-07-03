# playtracker:handles/player/dead/stopped

tellraw @s[tag=playtracker.debug] [{"text": "[playtracker:handles/player/dead/stopped] Respawned! Dead for ", "color": "gray"}, {"score": {"objective": "ptrak.deathtime", "name": "@s"}}, {"text": " ticks."}]
