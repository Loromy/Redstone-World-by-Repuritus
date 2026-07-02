# Prüfen, ob Kohle, Roh-Eisen, Roh-Gold oder Diamanten aufgehoben wurden
execute if score @s stat_ore_coal matches 1.. run function redstoneworld:adventur_system/collections/categories/mining_calc
execute if score @s stat_ore_iron matches 1.. run function redstoneworld:adventur_system/collections/categories/mining_calc
execute if score @s stat_ore_gold matches 1.. run function redstoneworld:adventur_system/collections/categories/mining_calc
execute if score @s stat_ore_lapis matches 1.. run function redstoneworld:adventur_system/collections/categories/mining_calc
execute if score @s stat_ore_diamond matches 1.. run function redstoneworld:adventur_system/collections/categories/mining_calc