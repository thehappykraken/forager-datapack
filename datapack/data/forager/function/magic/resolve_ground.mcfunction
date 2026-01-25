# Execute spell at arrow location
execute if entity @s[tag=is_thunder] run function forager:magic/spells/thunder
execute if entity @s[tag=is_fireball] run function forager:magic/spells/fireball
execute if entity @s[tag=is_restoration] run function forager:magic/spells/restoration

# Mark as resolved and kill
tag @s add spell_resolved
kill @s