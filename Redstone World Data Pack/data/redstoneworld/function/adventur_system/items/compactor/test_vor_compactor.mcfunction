# 1. Spieler markieren, die das Item im Inventar haben
execute as @a[nbt={Inventory:[{Slot:9b,id:"minecraft:dropper"}]},gamemode=!spectator,gamemode=!creative] at @s run function redstoneworld:adventur_system/items/compactor/compactor
