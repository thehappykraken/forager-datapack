# Tracks the health of the Iron Golem Cores for the Bossbar
scoreboard objectives add core_health_value dummy "Core Health"

# Create Bossbars
bossbar add forager:heart_core "The Heart Core"
bossbar add forager:life_core "Life Conduit"
bossbar add forager:power_core "Power Conduit"

# Set Bossbar Colors and Styles
bossbar set forager:heart_core color yellow
bossbar set forager:heart_core style notched_10

bossbar set forager:life_core color green
bossbar set forager:life_core style notched_10

bossbar set forager:power_core color purple
bossbar set forager:power_core style notched_10

scoreboard objectives add onslaught_time dummy

team add core_team
team modify core_team seeFriendlyInvisibles false

# --- SYSTEM INFRASTRUCTURE ---
# Ensure the logic objectives exist
scoreboard objectives add onslaught_vars dummy

# Set initial state to inactive to prevent loop leaks on reload
scoreboard players set .active onslaught_vars 0