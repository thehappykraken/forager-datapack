# Apply Wither to the exact entity the player just hit
execute on target run effect give @s minecraft:wither 3 0 true

# Add a visual indicator so players see it work in the dark
execute on target run particle minecraft:witch ~ ~1 ~ 0.2 0.5 0.2 0.1 15

# Allow the advancement to trigger again next hit
advancement revoke @s only forager:internal/witherblade_hit