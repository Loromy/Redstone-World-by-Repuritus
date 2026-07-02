# Falls kein Holz abgebaut wurde, wird der Rest dieser Datei übersprungen
execute unless score @s stat_spruce_wood matches 1.. run return 0

# =========================================================================
# XP-SKALIERUNG (AM ANFANG WENIGER XP)
# =========================================================================
# 5 Basis-XP + 4 XP pro Level
scoreboard players set #temp_xp col_vars 5
scoreboard players set #level_bonus col_vars 4

# Bonus berechnen: Aktuelles Holz-Level * Bonus pro Level
scoreboard players operation #multiplikator col_vars = @s lvl_wood
scoreboard players operation #multiplikator col_vars *= #level_bonus col_vars
scoreboard players operation #temp_xp col_vars += #multiplikator col_vars

# =========================================================================
# SYSTEM-PROZESSWEITERLEITUNG
# =========================================================================

# XP dem Spieler gutschreiben
scoreboard players operation @s collections_wood += #temp_xp col_vars

# Actionbar anzeigen (+5 XP auf Level 0, +9 XP auf Level 1, etc.)
function redstoneworld:adventur_system/collections/categories/show_actionbar/show_wood

# Level-Up Check & Schleife starten
function redstoneworld:adventur_system/collections/categories/wood_check

# Den Block-Zähler des Spielers wieder auf 0 setzen
scoreboard players set @s stat_spruce_wood 0