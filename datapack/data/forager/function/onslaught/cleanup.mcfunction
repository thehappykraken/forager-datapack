# 1. Stop the clock
scoreboard players set .active onslaught_vars 0
scoreboard players set .seconds onslaught_time 0

# 2. Grand Finale Visuals
tellraw @a {"text":"[Cradle] VOID SIGNATURES DISSIPATING. ONSLAUGHT COMPLETE.","color":"aqua","bold":true}
playsound minecraft:ui.toast.challenge_complete ambient @a ~ ~ ~ 1 1
particle minecraft:explosion_emitter 73 45 -82 5 5 5 0.1 100

# 3. Purge the Mobs (Removes the threat immediately)
kill @e[tag=abyssal_mob]

# 4. Final Core Sync
# Calls your core_manager one last time to ensure bossbars are accurate for evaluation
function forager:core_manager

scoreboard objectives setdisplay sidebar

function forager:systems/bossbar_hide

tellraw @a {"text":"[Cradle] Evaluating conduit integrity...","color":"gray","italic":true}