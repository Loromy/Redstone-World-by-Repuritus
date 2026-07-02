# Falls kein Monster getötet wurde, abbrechen
execute unless score @s stat_mob_kills matches 1.. run return 0

# Basis-XP (40 für Kills) und Level-Bonus (5 XP pro Level)
scoreboard players set #temp_xp col_vars 40
scoreboard players set #level_bonus col_vars 5

# Bonus berechnen
scoreboard players operation #multiplikator col_vars = @s lvl_combat
scoreboard players operation #multiplikator col_vars *= #level_bonus col_vars
scoreboard players operation #temp_xp col_vars += #multiplikator col_vars

# XP gutschreiben
scoreboard players operation @s collections_combat += #temp_xp col_vars

function redstoneworld:adventur_system/collections/categories/show_actionbar/show_combat

# Level-Up Check starten
function redstoneworld:adventur_system/collections/categories/combat_check

# Zähler zurücksetzen
scoreboard players set @s stat_mob_kills 0