# 1. Tagging magic arrows (Consistent with 1.21.1 Data Components)
execute as @e[type=arrow,tag=!spell_tagged,nbt={item:{components:{"minecraft:custom_model_data":{strings:["thunder"]}}}}] run tag @s add is_thunder 
execute as @e[type=arrow,tag=!spell_tagged,nbt={item:{components:{"minecraft:custom_model_data":{strings:["fireball"]}}}}] run tag @s add is_fireball
execute as @e[type=arrow,tag=!spell_tagged,nbt={item:{components:{"minecraft:custom_model_data":{strings:["restoration"]}}}}] run tag @s add is_restoration

# Add the master tag to any arrow that received a spell tag
execute as @e[type=arrow,tag=!spell_tagged] if entity @s[tag=is_thunder] run tag @s add spell_tagged 
execute as @e[type=arrow,tag=!spell_tagged] if entity @s[tag=is_fireball] run tag @s add spell_tagged
execute as @e[type=arrow,tag=!spell_tagged] if entity @s[tag=is_restoration] run tag @s add spell_tagged

# 2. Visual Particles (Optional addition for feedback)
execute as @e[type=arrow,tag=is_thunder] at @s run particle minecraft:electric_spark ~ ~ ~ 0.1 0.1 0.1 0.01 1
execute as @e[type=arrow,tag=is_fireball] at @s run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.01 1

# 3. GROUND DETECTION
execute as @e[type=arrow,tag=spell_tagged,tag=!spell_resolved,nbt={inGround:1b}] at @s run function forager:magic/resolve_ground 

# Continue loop
schedule function forager:magic/loop 1t