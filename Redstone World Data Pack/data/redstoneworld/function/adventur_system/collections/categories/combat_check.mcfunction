# Nächstes Level berechnen: (Level + 1) * 350 (Combat braucht mehr XP)
scoreboard players operation @s lvl_next_combat = @s lvl_combat
scoreboard players add @s lvl_next_combat 1
scoreboard players set #350_xp lvl_next_combat 350
scoreboard players operation @s lvl_next_combat *= #350_xp lvl_next_combat

# Wenn genug XP da sind, in die UP-Datei abspringen
execute if score @s collections_combat >= @s lvl_next_combat as @s run function redstoneworld:adventur_system/collections/categories/combat_up