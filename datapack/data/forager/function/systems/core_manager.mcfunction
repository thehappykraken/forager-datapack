# --- 1. DATA UPDATES (Only if they exist) ---
execute as @e[tag=central_core] store result bossbar forager:heart_core value run data get entity @s Health
execute as @e[tag=faction_life_core] store result bossbar forager:life_core value run data get entity @s Health
execute as @e[tag=faction_power_core] store result bossbar forager:power_core value run data get entity @s Health

# --- 2. POSITION SYNC ---
execute as @e[tag=core_bait] at @s run tp @e[tag=core_visual,distance=..2,limit=1] ~ ~ ~

# --- 3. AUTO-CLEANUP (Safety only) ---
# If a core dies, we set its value to 0 so the bar looks empty, 
# but we leave the 'hide' to the manual function to avoid flickering.
execute unless entity @e[tag=central_core] run bossbar set forager:heart_core value 0
execute unless entity @e[tag=faction_life_core] run bossbar set forager:life_core value 0
execute unless entity @e[tag=faction_power_core] run bossbar set forager:power_core value 0