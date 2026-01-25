# 1. Find the mob that has the 'Hero of the Village' marker [cite: 2]
execute as @e[type=!player,effects={hero_of_the_village:{}},distance=..60] at @s run function forager:magic/resolve_entity [cite: 2, 8]

# 2. Revoke advancement so it can trigger again immediately 
advancement revoke @s only forager:magic/detect_hit