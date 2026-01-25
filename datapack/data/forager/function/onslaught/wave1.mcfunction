# --- WAVE 1: THE BREACH (X:24 to X:32 LINE) ---
tellraw @a {"text":"[Cradle] Wave 1: Enemies have breached the inner perimeter!","color":"red","bold":true}
playsound minecraft:entity.wither.spawn ambient @a ~ ~ ~ 1 0.5
execute as @a at @s run playsound minecraft:music.showdown master @s ~ ~ ~ 1 1

# --- 30 ZOMBIES (Spawning in a tight vertical strip at the X:28 line) ---
# North Side of the Strip
summon zombie 24 46 -60 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon zombie 28 46 -60 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon zombie 32 46 -60 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon zombie 26 46 -65 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon zombie 30 46 -65 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}

# South Side of the Strip
summon zombie 24 46 -104 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon zombie 28 46 -104 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon zombie 32 46 -104 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon zombie 26 46 -99 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon zombie 30 46 -99 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}

# Center Mass (Around Z:-82)
summon zombie 24 46 -82 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon zombie 26 46 -82 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon zombie 28 46 -82 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon zombie 30 46 -82 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon zombie 32 46 -82 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon zombie 28 46 -75 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon zombie 28 46 -89 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon zombie 25 46 -78 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon zombie 31 46 -86 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon zombie 25 46 -86 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon zombie 31 46 -78 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon zombie 27 46 -80 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon zombie 29 46 -84 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon zombie 24 46 -70 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon zombie 32 46 -70 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon zombie 24 46 -94 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon zombie 32 46 -94 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon zombie 27 46 -72 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon zombie 29 46 -92 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon zombie 28 46 -82 {Tags:["abyssal_mob"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}

# --- 10 CREEPERS (Scattered along the X:28 line) ---
summon creeper 28 46 -58 {Tags:["abyssal_mob","abyssal_creeper"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon creeper 28 46 -106 {Tags:["abyssal_mob","abyssal_creeper"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon creeper 24 46 -82 {Tags:["abyssal_mob","abyssal_creeper"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon creeper 32 46 -82 {Tags:["abyssal_mob","abyssal_creeper"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon creeper 28 46 -70 {Tags:["abyssal_mob","abyssal_creeper"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon creeper 28 46 -94 {Tags:["abyssal_mob","abyssal_creeper"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon creeper 26 46 -78 {Tags:["abyssal_mob","abyssal_creeper"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon creeper 30 46 -86 {Tags:["abyssal_mob","abyssal_creeper"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon creeper 26 46 -86 {Tags:["abyssal_mob","abyssal_creeper"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}
summon creeper 30 46 -78 {Tags:["abyssal_mob","abyssal_creeper"],Attributes:[{Name:"minecraft:follow_range",Base:100f}]}