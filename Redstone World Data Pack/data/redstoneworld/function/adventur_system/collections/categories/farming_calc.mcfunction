# Basis-XP (8) und Level-Bonus (2 XP pro Level) festlegen
scoreboard players set #temp_xp col_vars 8
scoreboard players set #level_bonus col_vars 2

# Bonus berechnen: Aktuelles Level * Bonus pro Level
scoreboard players operation #multiplikator col_vars = @s lvl_farming
scoreboard players operation #multiplikator col_vars *= #level_bonus col_vars
scoreboard players operation #temp_xp col_vars += #multiplikator col_vars

# XP gutschreiben
scoreboard players operation @s collections_farming += #temp_xp col_vars

function redstoneworld:adventur_system/collections/categories/show_actionbar/show_farming

# Level-Up Check starten
function redstoneworld:adventur_system/collections/categories/farming_check

# Statistiken wieder auf 0 setzen
scoreboard players set @s stat_crop_wheat 0
scoreboard players set @s stat_crop_cane 0
scoreboard players set @s stat_cactus_farm 0
