#Collection System - Farming Tracking
#Verfolgt geerntete Feldfrüchte und Pflanzen

#Wheat
execute as @a if score @s stat_wheat matches 1.. run scoreboard players add @s collections_farming 1
execute as @a if score @s stat_wheat matches 1.. run title @s actionbar [{"text":"🌾 Farming: ","color":"gold"},{"score":{"name":"@s","objective":"collections_farming"},"color":"white"}]
execute as @a if score @s stat_wheat matches 1.. run scoreboard players set @s stat_wheat 0
