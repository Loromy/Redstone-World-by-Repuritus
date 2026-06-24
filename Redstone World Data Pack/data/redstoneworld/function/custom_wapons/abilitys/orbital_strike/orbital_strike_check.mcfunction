execute store result score @s cw_ability run data get entity @s SelectedItem.components.minecraft:custom_data.ability

execute if score @s cw_ability matches 5 run execute if score @s Mana matches 10000.. run execute if score @s wapon_cooldown_orbital_strike matches 1..60 run tellraw @s [{"bold":true,"color":"red","italic":false,"text":"This Item is on Cooldown noch: "},{"score":{"name":"@s","objective":"wapon_cooldown_orbital_strike"}},"s"]

execute if score @s cw_ability matches 5 run execute unless score @s Mana matches 10000.. run tellraw @s [{"bold":true,"color":"light_purple","italic":false,"text":"You don't have enough mana: "},{"score":{"name":"@s","objective":"Mana"}},{"text":"/10000"}]

execute if score @s cw_ability matches 5 run execute if score @s Mana matches 10000.. run execute unless score @s wapon_cooldown_orbital_strike matches 1.. run function redstoneworld:custom_wapons/abilitys/orbital_strike/orbital_strike_ability
