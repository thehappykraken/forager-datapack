# forager:effects/witherblade_tick
# Apply a short Wither effect to any recently hurt mob near a player holding Witherblade.

execute as @e[type=!player,nbt={HurtTime:10s}] at @s if entity @p[distance=..3,nbt={SelectedItem:{components:{"minecraft:custom_data":{forager_item:"witherblade"}}}}] run effect give @s minecraft:wither 6 0 false