# Add 1 kill to the player who got the kill
scoreboard players add @s abyssal_kills 1

# Revoke the advancement so it can trigger again next kill
advancement revoke @s only forager:chapter2/abyssal_kill
