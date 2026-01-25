# 1. Identify which spell arrow hit this entity
execute if entity @e[type=arrow,tag=is_thunder,distance=..3,limit=1] at @s run function forager:magic/spells/thunder 
execute if entity @e[type=arrow,tag=is_fireball,distance=..3,limit=1] at @s run function forager:magic/spells/fireball 
execute if entity @e[type=arrow,tag=is_restoration,distance=..3,limit=1] at @s run function forager:magic/spells/restoration

# 2. Cleanup
effect clear @s minecraft:hero_of_the_village 
kill @e[type=arrow,tag=spell_tagged,distance=..3,limit=1] 
tag @s remove magic_target