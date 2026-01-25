# --- 1. INCREMENTAL AIR CLEAR (Slicing by Y-level) ---
# Each command handles ~30k blocks to stay under the 32,768 limit.
fill -10 44 -118 80 49 -47 air
fill -10 50 -118 80 54 -47 air
fill -10 55 -118 80 59 -47 air
fill -10 60 -118 80 64 -47 air
fill -10 65 -118 80 69 -47 air
fill -10 70 -118 80 74 -47 air
fill -10 75 -118 80 80 -47 air

# --- 2. THE SHELL (SEA LANTERNS) ---
# Floor
fill -9 44 -117 79 44 -48 sea_lantern

# Roof
fill -9 79 -117 79 79 -48 sea_lantern

# West Wall (X: -9)
fill -9 45 -117 -9 78 -48 sea_lantern

# East Wall (X: 79)
fill 79 45 -117 79 78 -48 sea_lantern

# North Wall (Z: -48)
fill -9 45 -48 79 78 -48 sea_lantern

# South Wall (Z: -117)
fill -9 45 -117 79 78 -117 sea_lantern

# --- 3. MARK CORE LOCATIONS (WOOL INDICATORS) ---
setblock 73 44 -82 red_wool
setblock 73 44 -55 green_wool
setblock 73 44 -110 blue_wool

# --- 4. TELEPORT AND FEEDBACK ---
tp @s 73 45 -82
tellraw @s {"text":"[Cradle Test] Massive chamber cleared in 7 slices and rebuilt.","color":"aqua","bold":true}