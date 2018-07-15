# playtracker:handles/player/resting/stopped

tellraw @s[tag=playtracker.debug] [{"text": "[playtracker:handles/player/resting/stopped] Stopped resting! Rested for ", "color": "gray"}, {"score": {"objective": "ptrak.resttime", "name": "@s"}}, {"text": " ticks."}]
