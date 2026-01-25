# forager:load_dispatch
# Runs once whenever the datapack or world loads

tellraw @a {"text":"[Forager] load_dispatch running","color":"green"}

# Call other initialization functions
function forager:test_load

