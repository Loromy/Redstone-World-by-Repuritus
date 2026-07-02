# Nächstes Level berechnen: (Level + 1) * 200 (Farming braucht etwas weniger XP)
scoreboard players operation @s lvl_next_farming = @s lvl_farming
scoreboard players add @s lvl_next_farming 1
scoreboard players set #200_xp lvl_next_farming 200
scoreboard players operation @s lvl_next_farming *= #200_xp lvl_next_farming

# Wenn genug XP da sind, in die UP-Datei abspringen
execute if score @s collections_farming >= @s lvl_next_farming as @s run function redstoneworld:adventur_system/collections/categories/farming_up