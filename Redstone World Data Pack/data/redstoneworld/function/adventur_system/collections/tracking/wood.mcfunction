#Collection System - Wood Tracking
#Verfolgt abgebaute Holzblöcke nach Typ

#Wenn ein Spieler Holz abbaut, erhöht sich eine der stat_wood_* Statistiken
#Wir prüfen alle und erhöhen collections_wood entsprechend

#Oak
execute as @a if score @s stat_pale_oak_wood matches 1.. run scoreboard players add @s collections_wood 1
execute as @a if score @s stat_pale_oak_wood matches 1.. run title @s actionbar [{"text":"🌲 Wood: ","color":"green"},{"score":{"name":"@s","objective":"collections_wood"},"color":"white"}]
execute as @a if score @s stat_pale_oak_wood matches 1.. run scoreboard players set @s stat_pale_oak_wood 0

#Cactus
execute as @a if score @s stat_cactus matches 1.. run scoreboard players add @s collections_wood 1
execute as @a if score @s stat_cactus matches 1.. run title @s actionbar [{"text":"🌲 Wood: ","color":"green"},{"score":{"name":"@s","objective":"collections_wood"},"color":"white"}]
execute as @a if score @s stat_cactus matches 1.. run scoreboard players set @s stat_cactus 0
