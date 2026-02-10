# If an invis_zone marker exists, run the invis logic
execute if entity @e[type=minecraft:marker,tag=invis_zone,limit=1] run function forager:effects/invis_zone

# Reschedule this loop
schedule function forager:effects/invis_loop 40t

