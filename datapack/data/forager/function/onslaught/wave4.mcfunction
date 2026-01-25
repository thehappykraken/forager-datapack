# --- WAVE 4: THE BEASTIAL ONSLAUGHT (X:24 to X:32 LINE) ---
tellraw @a {"text":"[Cradle] Wave 4: Massive seismic vibrations detected. The Ravagers are here!","color":"gold","bold":true}
playsound minecraft:entity.ravager.spawn ambient @a ~ ~ ~ 1 0.5
execute as @a at @s run playsound minecraft:music.pixel_gladiators master @s ~ ~ ~ 1 1

# --- 10 RAVAGERS (The Heavy Hitters) ---
# Spaced out along the Z-axis within the X:24-32 corridor
summon ravager 28 46 -55 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon ravager 24 46 -65 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon ravager 32 46 -75 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon ravager 28 46 -82 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon ravager 24 46 -90 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon ravager 32 46 -100 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon ravager 28 46 -110 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon ravager 26 46 -70 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon ravager 30 46 -95 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon ravager 28 46 -60 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}

# --- 20 VINDICATORS (The Infantry) ---
# Swarming around the Ravagers
summon vindicator 24 46 -62 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon vindicator 32 46 -102 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon vindicator 28 46 -82 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon vindicator 25 46 -75 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon vindicator 31 46 -89 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon vindicator 24 46 -82 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon vindicator 32 46 -82 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon vindicator 26 46 -70 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon vindicator 30 46 -94 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon vindicator 28 46 -65 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon vindicator 28 46 -99 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon vindicator 27 46 -82 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon vindicator 29 46 -82 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon vindicator 24 46 -75 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon vindicator 32 46 -89 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon vindicator 28 46 -72 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon vindicator 28 46 -92 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon vindicator 26 46 -82 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon vindicator 30 46 -82 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon vindicator 28 46 -85 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}