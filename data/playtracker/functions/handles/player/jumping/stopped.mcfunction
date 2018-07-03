# playtracker:handles/player/jumping/stopped

tellraw @s[tag=playtracker.debug] [{"text": "[playtracker:handles/player/jumping/stopped] Stopped jumping! Airborne for ", "color": "gray"}, {"score": {"objective": "ptrak.jumptime", "name": "@s"}}, {"text": " ticks."}]
