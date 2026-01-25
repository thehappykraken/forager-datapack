# Identify the nearest Iron Golem (Core) and force the Endermen to attack it
execute as @e[tag=enderman_aggro] at @s run damage @s 0.1 minecraft:generic_kill by @e[type=iron_golem,limit=1,sort=nearest]

# Remove the tag so the damage only happens once
tag @e[tag=enderman_aggro] remove enderman_aggro