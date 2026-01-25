# --- 1. THE LOOP CONDITION ---
# Stop the logic if the onslaught is not active
execute if score .active onslaught_vars matches 0 run return 0

# --- 2. TIMER & HUD ---
# Manages the 6-minute clock and actionbar display
scoreboard players add .ticks onslaught_time 1
execute if score .ticks onslaught_time matches 20.. run scoreboard players add .seconds onslaught_time 1
execute if score .ticks onslaught_time matches 20.. run scoreboard players set .ticks onslaught_time 0

title @a actionbar ["",{"text":"Time Elapsed: ","color":"gray"},{"score":{"name":".seconds","objective":"onslaught_time"},"color":"gold"},{"text":"s / 360s"}]

# --- 3. ABYSSAL MAINTENANCE ---
# We no longer need arrows or teleports because mobs spawn within AI range.
# This section keeps their AI focused and handles core damage.

# Ensure all abyssal mobs have a massive follow range so they don't 'give up'
execute as @e[tag=abyssal_mob] run attribute @s minecraft:follow_range base set 100

# Creeper Siege: Creepers ignite automatically when they reach a core
execute as @e[tag=abyssal_creeper] at @s if entity @e[tag=core_bait,distance=..3.5] run data merge entity @s {ignited:1b,Fuse:20}

# Core Attrition: Mobs deal 'virtual' damage to the Iron Golem cores when close
# This allows the cores to have custom health and bossbars
execute as @e[tag=abyssal_mob] at @s run damage @e[tag=core_bait,distance=..3,limit=1,sort=nearest] 2 minecraft:mob_attack by @s

# Constant Aggro Ping: Every tick, Endermen are reminded that the Cores are the enemy
execute as @e[type=enderman,tag=abyssal_mob] at @s run damage @s 0.000001 minecraft:generic_kill by @e[type=iron_golem,limit=1,sort=nearest]

# Update the Bossbars and check for core destruction
function forager:core_manager

# --- 4. WAVE TRIGGERS ---
# Calls the wave functions at the correct time intervals
execute if score .seconds onslaught_time matches 1 if score .ticks onslaught_time matches 0 run function forager:onslaught/wave1
execute if score .seconds onslaught_time matches 60 if score .ticks onslaught_time matches 0 run function forager:onslaught/wave2
execute if score .seconds onslaught_time matches 120 if score .ticks onslaught_time matches 0 run function forager:onslaught/wave3
execute if score .seconds onslaught_time matches 180 if score .ticks onslaught_time matches 0 run function forager:onslaught/wave4
execute if score .seconds onslaught_time matches 240 if score .ticks onslaught_time matches 0 run function forager:onslaught/wave5
execute if score .seconds onslaught_time matches 300 if score .ticks onslaught_time matches 0 run function forager:onslaught/wave6
execute if score .seconds onslaught_time matches 360 if score .ticks onslaught_time matches 0 run tellraw @a {"text":"[Cradle] VOID SIGNATURES DISSIPATING. ONSLAUGHT COMPLETE.","color":"aqua","bold":true}
execute if score .seconds onslaught_time matches 360 if score .ticks onslaught_time matches 0 run playsound minecraft:ui.toast.challenge_complete ambient @a ~ ~ ~ 1 1
execute if score .seconds onslaught_time matches 360 if score .ticks onslaught_time matches 0 run scoreboard players set .active onslaught_vars 0
execute if score .seconds onslaught_time matches 360 if score .ticks onslaught_time matches 0 run scoreboard players set .seconds onslaught_time 0
execute if score .seconds onslaught_time matches 360 if score .ticks onslaught_time matches 0 run kill @e[tag=abyssal_mob]

# --- 5. RECURSION ---
# Loop the function every tick
execute if score .active onslaught_vars matches 1 run schedule function forager:onslaught/wave_logic 1t


