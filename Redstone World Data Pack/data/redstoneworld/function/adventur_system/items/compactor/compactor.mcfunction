
#wheat 1x
execute as @s store result score @s compress_items run clear @s wheat[minecraft:custom_data={is_compacted:0b}] 0
execute as @s[scores={compress_items=9..}] run clear @s wheat[minecraft:custom_data={is_compacted:0b}] 9
execute as @s[scores={compress_items=9..}] run function redstoneworld:adventur_system/items/compactor/items/wheat {count:1}
execute as @s[scores={compress_items=9..}] run playsound entity.experience_orb.pickup master @s ~ ~ ~

#wheat 2x
execute as @s store result score @s compress_items run clear @s wheat[minecraft:custom_data={is_compacted:1b}] 0
execute as @s[scores={compress_items=9..}] run clear @s wheat[minecraft:custom_data={is_compacted:1b}] 9
execute as @s[scores={compress_items=9..}] run function redstoneworld:adventur_system/items/compactor/items/wheat {count:2}
execute as @s[scores={compress_items=9..}] run playsound entity.experience_orb.pickup master @s ~ ~ ~


#wheat seeds 1x
execute as @s store result score @s compress_items run clear @s wheat_seeds[minecraft:custom_data={is_compacted:0b}] 0
execute as @s[scores={compress_items=9..}] run clear @s wheat_seeds[minecraft:custom_data={is_compacted:0b}] 9
execute as @s[scores={compress_items=9..}] run function redstoneworld:adventur_system/items/compactor/items/wheat_seeds {count:1}
execute as @s[scores={compress_items=9..}] run playsound entity.experience_orb.pickup master @s ~ ~ ~

#wheat seeds 2x
execute as @s store result score @s compress_items run clear @s wheat_seeds[minecraft:custom_data={is_compacted:1b}] 0
execute as @s[scores={compress_items=9..}] run clear @s wheat_seeds[minecraft:custom_data={is_compacted:1b}] 9
execute as @s[scores={compress_items=9..}] run function redstoneworld:adventur_system/items/compactor/items/wheat_seeds {count:2}
execute as @s[scores={compress_items=9..}] run playsound entity.experience_orb.pickup master @s ~ ~ ~


#cactus 1x
execute as @s store result score @s compress_items run clear @s cactus[minecraft:custom_data={is_compacted:0b}] 0
execute as @s[scores={compress_items=9..}] run clear @s cactus[minecraft:custom_data={is_compacted:0b}] 9
execute as @s[scores={compress_items=9..}] run function redstoneworld:adventur_system/items/compactor/items/cactus {count:1}
execute as @s[scores={compress_items=9..}] run playsound entity.experience_orb.pickup master @s ~ ~ ~

#cactus 2x
execute as @s store result score @s compress_items run clear @s cactus[minecraft:custom_data={is_compacted:1b}] 0
execute as @s[scores={compress_items=9..}] run clear @s cactus[minecraft:custom_data={is_compacted:1b}] 9
execute as @s[scores={compress_items=9..}] run function redstoneworld:adventur_system/items/compactor/items/cactus {count:2}
execute as @s[scores={compress_items=9..}] run playsound entity.experience_orb.pickup master @s ~ ~ ~


#pale oak wood 1x
execute as @s store result score @s compress_items run clear @s pale_oak_wood[minecraft:custom_data={is_compacted:0b}] 0
execute as @s[scores={compress_items=9..}] run clear @s pale_oak_wood[minecraft:custom_data={is_compacted:0b}] 9
execute as @s[scores={compress_items=9..}] run function redstoneworld:adventur_system/items/compactor/items/pale_oak_wood {count:1}
execute as @s[scores={compress_items=9..}] run playsound entity.experience_orb.pickup master @s ~ ~ ~

#pale oak wood 2x
execute as @s store result score @s compress_items run clear @s pale_oak_wood[minecraft:custom_data={is_compacted:1b}] 0
execute as @s[scores={compress_items=9..}] run clear @s pale_oak_wood[minecraft:custom_data={is_compacted:1b}] 9
execute as @s[scores={compress_items=9..}] run function redstoneworld:adventur_system/items/compactor/items/pale_oak_wood {count:2}
execute as @s[scores={compress_items=9..}] run playsound entity.experience_orb.pickup master @s ~ ~ ~

