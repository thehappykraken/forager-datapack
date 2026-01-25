# Summon Heart Core (Iron Golem Bait)
# Base Health: 100
summon iron_golem ~ ~ ~ {Tags:["core_bait","central_core"],CustomName:'{"text":"Heart Core","color":"red"}',CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Silent:1b,Invulnerable:0b,Health:60f,Attributes:[{Name:"minecraft:generic.max_health",Base:60f}],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],Passengers:[{id:"minecraft:block_display",Tags:["core_visual"],block_state:{Name:"minecraft:beacon"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]}}]}

# Initialize Bossbar Max
bossbar set forager:heart_core max 100