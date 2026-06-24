execute if score @s rcmp matches 1.. run execute store result score @s rcmp_mana run data get entity @s SelectedItem.components.minecraft:custom_data.mana_var

execute as @a[scores={Mana=1..}] at @s run execute if data entity @s SelectedItem.components.minecraft:custom_data{mana_item:1b} run title @s actionbar [{"color":"#6A00C7","text":"Mana: "},{"color":"#6A00C7","score":{"name":"@s","objective":"Mana"}}," / ",{"color":"#6A00C7","score":{"name":"@s","objective":"MaxMana"}},{"color":"#6A00C7","text":" ☃"}]




execute as @a[scores={rcmp=1..}] at @s run execute if score @s rcmp_mana matches 1 run scoreboard players add @s MaxMana 10
execute as @a[scores={rcmp=1..}] at @s run execute if score @s rcmp_mana matches 2 run scoreboard players add @s MaxMana 100
execute as @a[scores={rcmp=1..}] at @s run execute if score @s rcmp_mana matches 3 run scoreboard players add @s MaxMana 1000
execute as @a[scores={rcmp=1..}] at @s run execute if score @s rcmp_mana matches 4 run scoreboard players add @s MaxMana 10000
execute as @a[scores={rcmp=1..}] at @s run execute if score @s rcmp_mana matches 5 run scoreboard players add @s MaxMana 100000
execute as @a[scores={rcmp=1..}] at @s run execute if score @s rcmp_mana matches 6 run scoreboard players add @s MaxMana 1000000
execute as @a[scores={rcmp=1..}] at @s run scoreboard players set @s rcmp 0



