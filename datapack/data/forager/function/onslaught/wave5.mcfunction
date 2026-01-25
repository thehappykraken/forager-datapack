# --- WAVE 5: THE NETHER HEATWAVE (X:24 to X:32 LINE) ---
tellraw @a {"text":"[Cradle] Wave 5: Extreme heat signatures detected. The Nether has bled through!","color":"red","bold":true}
playsound minecraft:entity.blaze.ambient ambient @a ~ ~ ~ 1 0.5

# --- 15 HOGLINS (The Heavy Frontline at Y:46) ---
# Confined to the X:24 to X:32 strip to stay within the chamber floor 
summon hoglin 24 46 -60 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon hoglin 32 46 -60 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon hoglin 28 46 -70 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon hoglin 24 46 -82 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon hoglin 32 46 -82 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon hoglin 28 46 -94 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon hoglin 24 46 -104 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon hoglin 32 46 -104 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon hoglin 26 46 -75 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon hoglin 30 46 -89 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon hoglin 28 46 -65 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon hoglin 28 46 -99 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon hoglin 27 46 -82 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon hoglin 29 46 -82 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon hoglin 28 46 -82 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}

# --- 20 BLAZES (Ranged Artillery at Y:48) ---
# Spawning slightly elevated to fire fireballs across the X:44 to X:79 open space 
summon blaze 24 48 -62 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon blaze 32 48 -102 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon blaze 28 48 -82 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon blaze 24 48 -82 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon blaze 32 48 -82 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon blaze 26 48 -70 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon blaze 30 48 -94 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon blaze 28 48 -65 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon blaze 28 48 -99 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon blaze 25 48 -75 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon blaze 31 48 -89 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon blaze 27 48 -82 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon blaze 29 48 -82 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon blaze 24 48 -75 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon blaze 32 48 -89 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon blaze 28 48 -72 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon blaze 28 48 -92 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon blaze 26 48 -82 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon blaze 30 48 -82 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon blaze 28 48 -85 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}