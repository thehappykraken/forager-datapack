# Force Bossbars to show for all players
bossbar set forager:heart_core players @a
bossbar set forager:life_core players @a
bossbar set forager:power_core players @a

# Sync values once immediately
execute as @e[tag=central_core] store result bossbar forager:heart_core value run data get entity @s Health
execute as @e[tag=faction_life_core] store result bossbar forager:life_core value run data get entity @s Health
execute as @e[tag=faction_power_core] store result bossbar forager:power_core value run data get entity @s Health

tellraw @a {"text":"[Cradle] Objective health stabilized.","color":"gray","italic":true}