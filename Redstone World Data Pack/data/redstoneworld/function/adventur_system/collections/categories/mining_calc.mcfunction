# Basis-XP (20) und Level-Bonus (5) festlegen
scoreboard players set #temp_xp col_vars 20
scoreboard players set #level_bonus col_vars 5

# Bonus berechnen
scoreboard players operation #multiplikator col_vars = @s lvl_mining
scoreboard players operation #multiplikator col_vars *= #level_bonus col_vars
scoreboard players operation #temp_xp col_vars += #multiplikator col_vars

# XP gutschreiben
scoreboard players operation @s collections_mining += #temp_xp col_vars

# Actionbar & Level-Check anzeigen
function redstoneworld:adventur_system/collections/categories/show_actionbar/show_mining
function redstoneworld:adventur_system/collections/categories/mining_check

# Alle Erz-Zähler wieder auf 0 setzen
scoreboard players set @s stat_ore_coal 0
scoreboard players set @s stat_ore_iron 0
scoreboard players set @s stat_ore_gold 0
scoreboard players set @s stat_ore_lapis 0
scoreboard players set @s stat_ore_diamond 0
