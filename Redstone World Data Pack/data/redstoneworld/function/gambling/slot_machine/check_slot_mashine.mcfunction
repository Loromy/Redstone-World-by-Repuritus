execute as @e[type=minecraft:interaction,tag=gambling_slotmachine_interaction,distance=..1] on target run execute if score @s RedbyteCount matches 10.. run function redstoneworld:gambling/slot_machine/gambling_automat

execute as @e[type=minecraft:interaction,tag=gambling_slotmachine_interaction,distance=..1] on target at @s run execute unless score @s RedbyteCount matches 10.. run tellraw @s [{"color":"dark_red","text":"-----------------------------------------\n"},{"text":"One spin costs 10 Redbyts,\nhold at least 10 Redbytes in your hand."},{"text":"\n-----------------------------------------"}]

execute as @e[type=minecraft:interaction,tag=gambling_slotmachine_interaction,distance=..1] run data remove entity @s interaction
