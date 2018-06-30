# playtracker:handles/player/jumping/stopped

tellraw @s[tag=playtracker.debug] [{"text": "[playtracker:handles/player/jumping/stopped] Stopped jumping! Airborne for ", "color": "gray"}, {"score": {"objective": "ptrak_jumptime", "name": "@s"}}, {"text": " ticks."}]
