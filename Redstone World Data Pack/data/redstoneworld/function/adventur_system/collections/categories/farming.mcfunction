# Prüfen, ob Weizen, Zuckerrohr ODER Kaktus gesammelt wurde
execute if score @s stat_crop_wheat matches 1.. run function redstoneworld:adventur_system/collections/categories/farming_calc
execute if score @s stat_crop_cane matches 1.. run function redstoneworld:adventur_system/collections/categories/farming_calc
execute if score @s stat_cactus_farm matches 1.. run function redstoneworld:adventur_system/collections/categories/farming_calc