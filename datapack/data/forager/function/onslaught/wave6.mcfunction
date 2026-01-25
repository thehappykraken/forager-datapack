# --- WAVE 6: REALITY FAILURE (THE WATCHERS) ---
# Coordinates: X:24 to X:32 | Z: -60 to -104 | Y: 46

tellraw @a {"text":"[Cradle] Wave 6: REALITY FAILURE. The Watchers have arrived.","color":"dark_green","bold":true}
execute as @a at @s run playsound minecraft:entity.warden.ambient ambient @s ~ ~ ~ 1 0.6

# --- CREAKING (Primary Threat: Gaze Control) ---

summon minecraft:creaking 24 46 -60 {Tags:["abyssal_mob","wave6_creaking"]}
summon minecraft:creaking 28 46 -60 {Tags:["abyssal_mob","wave6_creaking"]}
summon minecraft:creaking 32 46 -60 {Tags:["abyssal_mob","wave6_creaking"]}

summon minecraft:creaking 26 46 -75 {Tags:["abyssal_mob","wave6_creaking"]}
summon minecraft:creaking 30 46 -75 {Tags:["abyssal_mob","wave6_creaking"]}

summon minecraft:creaking 24 46 -82 {Tags:["abyssal_mob","wave6_creaking"]}
summon minecraft:creaking 28 46 -82 {Tags:["abyssal_mob","wave6_creaking"]}
summon minecraft:creaking 32 46 -82 {Tags:["abyssal_mob","wave6_creaking"]}

summon minecraft:creaking 26 46 -89 {Tags:["abyssal_mob","wave6_creaking"]}
summon minecraft:creaking 30 46 -89 {Tags:["abyssal_mob","wave6_creaking"]}

summon minecraft:creaking 24 46 -104 {Tags:["abyssal_mob","wave6_creaking"]}
summon minecraft:creaking 28 46 -104 {Tags:["abyssal_mob","wave6_creaking"]}
summon minecraft:creaking 32 46 -104 {Tags:["abyssal_mob","wave6_creaking"]}

summon minecraft:creaking 27 46 -70 {Tags:["abyssal_mob","wave6_creaking"]}
summon minecraft:creaking 29 46 -94 {Tags:["abyssal_mob","wave6_creaking"]}

# --- EVOKERS (Support Casters / Disruption) ---

summon evoker 25 46 -65 {Tags:["abyssal_mob","wave6_evoker"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon evoker 31 46 -65 {Tags:["abyssal_mob","wave6_evoker"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}

summon evoker 28 46 -72 {Tags:["abyssal_mob","wave6_evoker"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}

summon evoker 25 46 -78 {Tags:["abyssal_mob","wave6_evoker"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon evoker 31 46 -78 {Tags:["abyssal_mob","wave6_evoker"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}

summon evoker 25 46 -86 {Tags:["abyssal_mob","wave6_evoker"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon evoker 31 46 -86 {Tags:["abyssal_mob","wave6_evoker"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}

summon evoker 28 46 -92 {Tags:["abyssal_mob","wave6_evoker"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}

summon evoker 25 46 -99 {Tags:["abyssal_mob","wave6_evoker"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon evoker 31 46 -99 {Tags:["abyssal_mob","wave6_evoker"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
