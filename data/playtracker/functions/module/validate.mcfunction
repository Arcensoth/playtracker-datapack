# playtracker:module/validate

tellraw @s [{"text":"[Playtracker]", "color": "aqua"}, {"text": " Verifying module dependencies...", "color": "white"}]

function playtracker:module/depend

tellraw @s [{"text":"[Playtracker]", "color": "aqua"}, {"text": " Performing additional checks...", "color": "white"}]

function playtracker:module/api/check

tellraw @s [{"text":"[Playtracker]", "color": "aqua"}, {"text": " Validation complete.", "color": "white"}]
