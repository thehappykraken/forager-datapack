# --- 1. INFRASTRUCTURE SAFETY ---
scoreboard objectives add onslaught_vars dummy
scoreboard objectives add onslaught_time dummy

scoreboard objectives add abyssal_kills dummy "Abyssal Kills"
scoreboard players set @a abyssal_kills 0
scoreboard objectives setdisplay sidebar abyssal_kills
scoreboard players reset @a abyssal_kills

scoreboard players reset @a abyssal_kills
scoreboard objectives setdisplay sidebar abyssal_kills


# --- 2. SYSTEM INITIALIZATION ---
scoreboard players set .active onslaught_vars 1

# Reset all timers
scoreboard players set .ticks onslaught_time 0
scoreboard players set .seconds onslaught_time 0

# --- 3. CORE & HUD SETUP ---
function forager:systems/bossbar_show

# Heal/Reset Cores to full health
execute as @e[tag=central_core] run data modify entity @s Health set value 100f
execute as @e[tag=faction_life_core] run data modify entity @s Health set value 60f
execute as @e[tag=faction_power_core] run data modify entity @s Health set value 60f

# --- 4. AUDIO/VISUAL FLAIR ---
tellraw @a {"text":"[Cradle] ABYSSAL BREACH DETECTED. DEFEND THE CONDUITS!","color":"dark_red","bold":true}
playsound minecraft:entity.ender_dragon.growl ambient @a ~ ~ ~ 1 0.5

# Reset Wave Locks (if you add wave locking later)
scoreboard players set .w1_lock onslaught_vars 0
scoreboard players set .w2_lock onslaught_vars 0
scoreboard players set .w3_lock onslaught_vars 0
scoreboard players set .w4_lock onslaught_vars 0
scoreboard players set .w5_lock onslaught_vars 0

# --- 5. IGNITION ---
function forager:onslaught/wave_logic