#execute as @e[tag=ore_spawner] at @s run execute if block ~ ~ ~ minecraft:stone run scoreboard players add @s block_respawn 1
#execute as @e[tag=ore_spawner] at @s run execute unless block ~ ~ ~ #c:ores run setblock ~ ~ ~ minecraft:stone

#Coal Ore
execute as @e[tag=coal_spawner] at @s run execute unless block ~ ~ ~ minecraft:coal_ore run scoreboard players add @s block_respawn 1
execute as @e[tag=coal_spawner] at @s run execute unless block ~ ~ ~ minecraft:coal_ore run setblock ~ ~ ~ minecraft:bedrock
execute as @e[tag=coal_spawner] at @s run execute unless block ~ ~ ~ minecraft:coal_ore run execute if score @s block_respawn matches 600.. run setblock ~ ~ ~ minecraft:coal_ore
execute as @e[tag=coal_spawner,scores={block_respawn=600..}] at @s run execute if block ~ ~ ~ minecraft:coal_ore run execute if score @s block_respawn matches 600.. run scoreboard players reset @s block_respawn
#Copper Ore
execute as @e[tag=copper_spawner] at @s run execute unless block ~ ~ ~ minecraft:copper_ore run scoreboard players add @s block_respawn 1
execute as @e[tag=copper_spawner] at @s run execute unless block ~ ~ ~ minecraft:copper_ore run setblock ~ ~ ~ minecraft:bedrock
execute as @e[tag=copper_spawner] at @s run execute unless block ~ ~ ~ minecraft:copper_ore run execute if score @s block_respawn matches 600.. run setblock ~ ~ ~ copper_ore
execute as @e[tag=copper_spawner,scores={block_respawn=600..}] at @s run execute if block ~ ~ ~ minecraft:copper_ore run execute if score @s block_respawn matches 600.. run scoreboard players reset @s block_respawn
#Iron Ore
execute as @e[tag=iron_spawner] at @s run execute unless block ~ ~ ~ minecraft:iron_ore run scoreboard players add @s block_respawn 1
execute as @e[tag=iron_spawner] at @s run execute unless block ~ ~ ~ minecraft:iron_ore run setblock ~ ~ ~ minecraft:bedrock
execute as @e[tag=iron_spawner] at @s run execute unless block ~ ~ ~ minecraft:iron_ore run execute if score @s block_respawn matches 600.. run setblock ~ ~ ~ iron_ore
execute as @e[tag=iron_spawner,scores={block_respawn=600..}] at @s run execute if block ~ ~ ~ minecraft:iron_ore run execute if score @s block_respawn matches 600.. run scoreboard players reset @s block_respawn
#Gold Ore
execute as @e[tag=gold_spawner] at @s run execute unless block ~ ~ ~ minecraft:gold_ore run scoreboard players add @s block_respawn 1
execute as @e[tag=gold_spawner] at @s run execute unless block ~ ~ ~ minecraft:gold_ore run setblock ~ ~ ~ minecraft:bedrock
execute as @e[tag=gold_spawner] at @s run execute unless block ~ ~ ~ minecraft:gold_ore run execute if score @s block_respawn matches 600.. run setblock ~ ~ ~ gold_ore
execute as @e[tag=gold_spawner,scores={block_respawn=600..}] at @s run execute if block ~ ~ ~ minecraft:gold_ore run execute if score @s block_respawn matches 600.. run scoreboard players reset @s block_respawn
#Lapis Lazuli Ore
execute as @e[tag=lapis_spawner] at @s run execute unless block ~ ~ ~ minecraft:lapis_ore run scoreboard players add @s block_respawn 1
execute as @e[tag=lapis_spawner] at @s run execute unless block ~ ~ ~ minecraft:lapis_ore run setblock ~ ~ ~ minecraft:bedrock
execute as @e[tag=lapis_spawner] at @s run execute unless block ~ ~ ~ minecraft:lapis_ore run execute if score @s block_respawn matches 600.. run setblock ~ ~ ~ minecraft:lapis_ore
execute as @e[tag=lapis_spawner,scores={block_respawn=600..}] at @s run execute if block ~ ~ ~ minecraft:lapis_ore run execute if score @s block_respawn matches 600.. run scoreboard players reset @s block_respawn
#Diamond Ore
execute as @e[tag=dia_spawner] at @s run execute unless block ~ ~ ~ minecraft:diamond_ore run scoreboard players add @s block_respawn 1
execute as @e[tag=dia_spawner] at @s run execute unless block ~ ~ ~ minecraft:diamond_ore run setblock ~ ~ ~ minecraft:bedrock
execute as @e[tag=dia_spawner] at @s run execute unless block ~ ~ ~ minecraft:diamond_ore run execute if score @s block_respawn matches 1200.. run setblock ~ ~ ~ minecraft:diamond_ore
execute as @e[tag=dia_spawner,scores={block_respawn=1200..}] at @s run execute if block ~ ~ ~ minecraft:diamond_ore run execute if score @s block_respawn matches 1200.. run scoreboard players reset @s block_respawn

#Block of Resin
execute as @e[tag=resin_spawner] at @s run execute unless block ~ ~ ~ minecraft:resin_block run scoreboard players add @s block_respawn 1
#execute as @e[tag=resin_spawner] at @s run execute unless block ~ ~ ~ minecraft:resin_block run setblock ~ ~ ~ minecraft:bedrock
execute as @e[tag=resin_spawner] at @s run execute unless block ~ ~ ~ minecraft:resin_block run execute if score @s block_respawn matches 300.. run setblock ~ ~ ~ minecraft:resin_block destroy
execute as @e[tag=resin_spawner,scores={block_respawn=300..}] at @s run execute if block ~ ~ ~ minecraft:resin_block run execute if score @s block_respawn matches 300.. run scoreboard players reset @s block_respawn

#suspicious_sand
execute as @e[tag=suspicious_sand_spawner] at @s run execute unless block ~ ~ ~ minecraft:suspicious_sand run scoreboard players add @s block_respawn 1
execute as @e[tag=suspicious_sand_spawner] at @s run execute unless block ~ ~ ~ minecraft:suspicious_sand run setblock ~ ~ ~ minecraft:bedrock
execute as @e[tag=suspicious_sand_spawner] at @s run execute unless block ~ ~ ~ minecraft:suspicious_sand run execute if score @s block_respawn matches 600.. run setblock ~ ~ ~ suspicious_sand{LootTable:"redstoneworld:dungeon/archaeology/pottery_task_suspicious_sand"}
execute as @e[tag=suspicious_sand_spawner,scores={block_respawn=600..}] at @s run execute if block ~ ~ ~ minecraft:suspicious_sand run execute if score @s block_respawn matches 600.. run scoreboard players reset @s block_respawn

#spruce x
execute as @e[tag=spruce_x_spawner] at @s run execute unless block ~ ~ ~ minecraft:spruce_wood[axis=x] run scoreboard players add @s block_respawn 1
#execute as @e[tag=spruce_x_spawner] at @s run execute unless block ~ ~ ~ minecraft:spruce_wood[axis=x] run setblock ~ ~ ~ minecraft:spruce_fence
execute as @e[tag=spruce_x_spawner] at @s run execute unless block ~ ~ ~ minecraft:spruce_wood[axis=x] run execute if score @s block_respawn matches 5000.. run setblock ~ ~ ~ minecraft:spruce_wood[axis=x] destroy
execute as @e[tag=spruce_x_spawner,scores={block_respawn=5000..}] at @s run execute if block ~ ~ ~ minecraft:spruce_wood[axis=x] run execute if score @s block_respawn matches 5000.. run scoreboard players reset @s block_respawn

#spruce y
execute as @e[tag=spruce_y_7_spawner] at @s run execute unless block ~ ~ ~ minecraft:spruce_wood[axis=y] run scoreboard players add @s block_respawn 1
#execute as @e[tag=spruce_y_7_spawner] at @s run execute unless block ~ ~ ~ minecraft:spruce_wood[axis=y] run setblock ~ ~ ~ minecraft:spruce_fence
execute as @e[tag=spruce_y_7_spawner] at @s run execute unless block ~ ~ ~ minecraft:spruce_wood[axis=y] run execute if score @s block_respawn matches 5000.. run fill ~ ~ ~ ~ ~6 ~ minecraft:spruce_wood[axis=y] replace minecraft:air
execute as @e[tag=spruce_y_7_spawner,scores={block_respawn=5000..}] at @s run execute if block ~ ~ ~ minecraft:spruce_wood[axis=y] run execute if score @s block_respawn matches 5000.. run scoreboard players reset @s block_respawn

#spruce z
execute as @e[tag=spruce_z_spawner] at @s run execute unless block ~ ~ ~ minecraft:spruce_wood[axis=z] run scoreboard players add @s block_respawn 1
#execute as @e[tag=spruce_z_spawner] at @s run execute unless block ~ ~ ~ minecraft:spruce_wood run setblock ~ ~ ~ minecraft:spruce_fence
execute as @e[tag=spruce_z_spawner] at @s run execute unless block ~ ~ ~ minecraft:spruce_wood[axis=z] run execute if score @s block_respawn matches 5000.. run setblock ~ ~ ~ minecraft:spruce_wood[axis=z] destroy
execute as @e[tag=spruce_z_spawner,scores={block_respawn=5000..}] at @s run execute if block ~ ~ ~ minecraft:spruce_wood[axis=z] run execute if score @s block_respawn matches 5000.. run scoreboard players reset @s block_respawn

#cactus
execute as @e[tag=cactus_spawner] at @s run execute unless block ~ ~ ~ minecraft:cactus run scoreboard players add @s block_respawn 1
execute as @e[tag=cactus_spawner] at @s run execute unless block ~ ~ ~ minecraft:cactus run setblock ~ ~ ~ minecraft:bamboo_fence
execute as @e[tag=cactus_spawner] at @s run execute unless block ~ ~ ~ minecraft:cactus run execute if score @s block_respawn matches 300.. run fill ~ ~ ~ ~ ~2 ~ minecraft:cactus
execute as @e[tag=cactus_spawner] at @s run execute if block ~ ~ ~ minecraft:cactus run execute if score @s block_respawn matches 300.. run execute as @e[type=minecraft:marker,tag=cactus_spawner,sort=random,limit=1] at @s run setblock ~ ~3 ~ minecraft:cactus_flower keep
execute as @e[tag=cactus_spawner,scores={block_respawn=300..}] at @s run execute if block ~ ~ ~ minecraft:cactus run execute if score @s block_respawn matches 300.. run scoreboard players reset @s block_respawn

#sugar_cane
execute as @e[tag=sugar_cane_spawner] at @s run execute unless block ~ ~ ~ minecraft:sugar_cane run scoreboard players add @s block_respawn 1
#execute as @e[tag=sugar_cane_spawner] at @s run execute unless block ~ ~ ~ minecraft:sugar_cane run setblock ~ ~ ~ minecraft:lime_stained_glass_pane
execute as @e[tag=sugar_cane_spawner] at @s run execute unless block ~ ~ ~ minecraft:sugar_cane run execute if score @s block_respawn matches 1000.. run fill ~ ~ ~ ~ ~2 ~ minecraft:sugar_cane replace minecraft:air
execute as @e[tag=sugar_cane_spawner,scores={block_respawn=1000..}] at @s run execute if block ~ ~ ~ minecraft:sugar_cane run execute if score @s block_respawn matches 1000.. run scoreboard players reset @s block_respawn


#whaet
#execute as @e[tag=wheat_spawner] at @s run execute unless block ~ ~ ~ minecraft:wheat[age=7] run scoreboard players add @s block_respawn 1
##execute as @e[tag=wheat_spawner] at @s run execute unless block ~ ~ ~ minecraft:wheat[age=7] run setblock ~ ~ ~ minecraft:wheat[age=1]
#execute as @e[tag=wheat_spawner] at @s run execute if score @s block_respawn matches 5000.. run execute if block ~ ~-1 ~ dirt run setblock ~ ~-1 ~ minecraft:farmland
#execute as @e[tag=wheat_spawner] at @s run execute if score @s block_respawn matches 5000.. run execute unless block ~ ~-1 ~ farmland run setblock ~ ~-1 ~ minecraft:farmland destroy
#execute as @e[tag=wheat_spawner] at @s run execute if score @s block_respawn matches 5000.. run setblock ~ ~ ~ minecraft:wheat[age=7] destroy
#execute as @e[tag=wheat_spawner] at @s run execute if score @s block_respawn matches 5000.. run scoreboard players reset @s block_respawn

#scoreboard players add wheat block_respawn 1
#execute as @e[tag=wheat_spawner,sort=random,limit=1] at @s run execute if score wheat block_respawn matches 20.. run fill ~-3 ~ ~-3 ~3 ~ ~3 minecraft:wheat[age=7] replace minecraft:air
#execute if score wheat block_respawn matches 20.. run scoreboard players set wheat block_respawn 0


