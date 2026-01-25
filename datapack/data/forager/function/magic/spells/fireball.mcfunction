# 1. THE BOOM: Summon a high-power instant explosion (Size 5 is larger than TNT)
summon creeper ~ ~ ~ {ExplosionRadius:10b,Fuse:0,ignited:1b}

# 2. THE VISUALS: Layered particles for a "shockwave" look
# Massive central blast
particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 0 5 force
# Expanding shockwave ring
particle minecraft:cloud ~ ~ ~ 2 0.1 2 0.1 100
# Intense fire burst
particle minecraft:flame ~ ~ ~ 1 2 1 0.2 150
# Falling embers
particle minecraft:lava ~ ~ ~ 2 1 2 0.1 25
# Heavy lingering smoke
particle minecraft:large_smoke ~ ~ ~ 1 1 1 0.05 40

# 3. THE SOUND: Layered bass-boosted audio
# Lower pitch (0.5) makes the explosion sound much "heavier"
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 0.5
# Add thunder for extra "crack"
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 2 1
# Add a metallic chime for magical flavor
playsound minecraft:block.bell.use master @a ~ ~ ~ 2 0.1