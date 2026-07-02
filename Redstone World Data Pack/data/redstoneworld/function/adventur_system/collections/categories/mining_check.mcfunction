# Nächstes Level berechnen: (Level + 1) * 300
scoreboard players operation @s lvl_next_mining = @s lvl_mining
scoreboard players add @s lvl_next_mining 1
scoreboard players set #300_xp lvl_next_mining 300
scoreboard players operation @s lvl_next_mining *= #300_xp lvl_next_mining

# Bei genug XP in die UP-Datei springen
execute if score @s collections_mining >= @s lvl_next_mining as @s run function redstoneworld:adventur_system/collections/categories/mining_up