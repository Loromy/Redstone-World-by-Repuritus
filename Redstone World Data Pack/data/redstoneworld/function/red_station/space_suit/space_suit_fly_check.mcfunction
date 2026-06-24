
execute as @a at @s run execute if data entity @s equipment{feet:{components:{"minecraft:equippable":{asset_id:"minecraft:space_suit",slot:"feet"}},count:1}} run function redstoneworld:red_station/space_suit/space_suit_fly

#reset
execute as @a at @s run execute if score @s space_fly_sneak-detect matches 1.. run scoreboard players reset @s space_fly_sneak-detect
