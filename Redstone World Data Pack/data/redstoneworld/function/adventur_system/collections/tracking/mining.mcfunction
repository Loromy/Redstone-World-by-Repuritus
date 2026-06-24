#Collection System - Mining Tracking
#Verfolgt abgebaute Erze nach Typ

#Wenn ein Spieler Erz abbaut, erhöht sich eine der stat_ore_* Statistiken
#Wir prüfen alle und erhöhen collections_mining entsprechend

#Iron Ore
execute as @a if score @s stat_ore_iron matches 1.. run scoreboard players add @s collections_mining 1
execute as @a if score @s stat_ore_iron matches 1.. run title @s actionbar [{"text":"⛏ Mining: ","color":"gold"},{"score":{"name":"@s","objective":"collections_mining"},"color":"white"}]
execute as @a if score @s stat_ore_iron matches 1.. run scoreboard players set @s stat_ore_iron 0

#Coal Ore
execute as @a if score @s stat_ore_coal matches 1.. run scoreboard players add @s collections_mining 1
execute as @a if score @s stat_ore_coal matches 1.. run title @s actionbar [{"text":"⛏ Mining: ","color":"gold"},{"score":{"name":"@s","objective":"collections_mining"},"color":"white"}]
execute as @a if score @s stat_ore_coal matches 1.. run scoreboard players set @s stat_ore_coal 0

#Diamond Ore
execute as @a if score @s stat_ore_diamond matches 1.. run scoreboard players add @s collections_mining 1
execute as @a if score @s stat_ore_diamond matches 1.. run title @s actionbar [{"text":"⛏ Mining: ","color":"gold"},{"score":{"name":"@s","objective":"collections_mining"},"color":"white"}]
execute as @a if score @s stat_ore_diamond matches 1.. run scoreboard players set @s stat_ore_diamond 0

#Gold Ore
execute as @a if score @s stat_ore_gold matches 1.. run scoreboard players add @s collections_mining 1
execute as @a if score @s stat_ore_gold matches 1.. run title @s actionbar [{"text":"⛏ Mining: ","color":"gold"},{"score":{"name":"@s","objective":"collections_mining"},"color":"white"}]
execute as @a if score @s stat_ore_gold matches 1.. run scoreboard players set @s stat_ore_gold 0

#Copper Ore
execute as @a if score @s stat_ore_copper matches 1.. run scoreboard players add @s collections_mining 1
execute as @a if score @s stat_ore_copper matches 1.. run title @s actionbar [{"text":"⛏ Mining: ","color":"gold"},{"score":{"name":"@s","objective":"collections_mining"},"color":"white"}]
execute as @a if score @s stat_ore_copper matches 1.. run scoreboard players set @s stat_ore_copper 0

#Redstone Ore
execute as @a if score @s stat_ore_redstone matches 1.. run scoreboard players add @s collections_mining 1
execute as @a if score @s stat_ore_redstone matches 1.. run title @s actionbar [{"text":"⛏ Mining: ","color":"gold"},{"score":{"name":"@s","objective":"collections_mining"},"color":"white"}]
execute as @a if score @s stat_ore_redstone matches 1.. run scoreboard players set @s stat_ore_redstone 0

#Lapis Ore
execute as @a if score @s stat_ore_lapis matches 1.. run scoreboard players add @s collections_mining 1
execute as @a if score @s stat_ore_lapis matches 1.. run title @s actionbar [{"text":"⛏ Mining: ","color":"gold"},{"score":{"name":"@s","objective":"collections_mining"},"color":"white"}]
execute as @a if score @s stat_ore_lapis matches 1.. run scoreboard players set @s stat_ore_lapis 0

#Emerald Ore
execute as @a if score @s stat_ore_emerald matches 1.. run scoreboard players add @s collections_mining 1
execute as @a if score @s stat_ore_emerald matches 1.. run title @s actionbar [{"text":"⛏ Mining: ","color":"gold"},{"score":{"name":"@s","objective":"collections_mining"},"color":"white"}]
execute as @a if score @s stat_ore_emerald matches 1.. run scoreboard players set @s stat_ore_emerald 0

#Resin
execute as @a if score @s stat_resin_block matches 1.. run scoreboard players add @s collections_mining 1
execute as @a if score @s stat_resin_block matches 1.. run title @s actionbar [{"text":"⛏ Mining: ","color":"gold"},{"score":{"name":"@s","objective":"collections_mining"},"color":"white"}]
execute as @a if score @s stat_resin_block matches 1.. run scoreboard players set @s stat_resin_block 0