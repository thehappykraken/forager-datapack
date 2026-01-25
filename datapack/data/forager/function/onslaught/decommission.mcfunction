# --- 1. HUD & TIMER CLEANUP ---
# Stop the engine
scoreboard players set .active onslaught_vars 0

# OVERWRITE the Actionbar timer with an empty string (This is the fix)
title @a actionbar ""

# Overwrite any subtitle/title just in case
title @a reset

# Hide the bossbars
function forager:bossbar_hide

# --- 2. CORE COMPONENT PURGE ---
# Remove the AI pathfinding markers
kill @e[tag=core_bait]

# Remove the actual Core entities (Iron Golems/Armor Stands)
kill @e[tag=central_core]
kill @e[tag=faction_life_core]
kill @e[tag=faction_power_core]
kill @e[tag=core_visual]

# --- 3. MOBS & AREA PURGE ---
kill @e[tag=abyssal_mob]

# --- 4. CLEANUP THE MARKERS (For the Test Chamber) ---
# If you are using the wool markers from the test_setup:
setblock 2 44 -83 air
setblock -1 44 -64 air
setblock -1 44 -102 air

# --- 5. FEEDBACK ---
tellraw @a {"text":"[Cradle] System Purged. All visual components and HUD elements cleared.","color":"gray","italic":true}


# --- 1. STOP THE ENGINE ---
scoreboard players set .active onslaught_vars 0

# --- 2. CLEAR HUD INSTANTLY ---
# Force fade-out to zero so the "Time Elapsed" disappears the millisecond this runs
title @a times 0 0 0
title @a actionbar ""
# Reset times to default
title @a times 10 70 20

# --- 3. PURGE REMAINING ENTITIES ---
kill @e[tag=core_bait]
kill @e[tag=core_visual]
kill @e[tag=abyssal_mob]

# Hide bossbars
function forager:bossbar_hide