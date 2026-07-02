# 1. Benötigte XP für das NÄCHSTE Level berechnen: (Aktuelles Level + 1) * 250
scoreboard players operation @s lvl_next_wood = @s lvl_wood
scoreboard players add @s lvl_next_wood 1
scoreboard players set #250_xp lvl_next_wood 250
scoreboard players operation @s lvl_next_wood *= #250_xp lvl_next_wood

# HIER PASSIERT DIE PERFORMANCE-MAGIE: Nur 1 Abfrage statt 5!
execute if score @s collections_wood >= @s lvl_next_wood as @s run function redstoneworld:adventur_system/collections/categories/wood_up