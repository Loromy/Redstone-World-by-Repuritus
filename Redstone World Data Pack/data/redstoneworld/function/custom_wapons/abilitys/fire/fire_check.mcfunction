execute if score @s cw_ability matches 2 run execute if score @s Mana matches 100.. run execute unless score @s wapon_cooldown_fire matches 1.. run function redstoneworld:custom_wapons/abilitys/fire/fire_ability

execute if score @s cw_ability matches 2 run execute if score @s Mana matches 100.. run execute if score @s wapon_cooldown_fire matches 1..9 run tellraw @s [{"bold":true,"color":"red","italic":false,"text":"This Item is on Cooldown noch: "},{"score":{"name":"@s","objective":"wapon_cooldown_fire"}},"s"]

execute if score @s cw_ability matches 2 run execute unless score @s Mana matches 100.. run tellraw @s [{"bold":true,"color":"light_purple","italic":false,"text":"You don't have enough mana: "},{"score":{"name":"@s","objective":"Mana"}},{"text":"/100"}]
