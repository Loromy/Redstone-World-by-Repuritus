#execute as @e[tag=ore_spawner] at @s run execute if block ~ ~ ~ minecraft:stone run scoreboard players add @s ore_respawn 1
#execute as @e[tag=ore_spawner] at @s run execute unless block ~ ~ ~ #c:ores run setblock ~ ~ ~ minecraft:stone

#Coal Ore
execute as @e[tag=coal_spawner] at @s run execute unless block ~ ~ ~ minecraft:coal_ore run scoreboard players add @s ore_respawn 1
execute as @e[tag=coal_spawner] at @s run execute unless block ~ ~ ~ minecraft:coal_ore run setblock ~ ~ ~ minecraft:bedrock
execute as @e[tag=coal_spawner] at @s run execute if score @s ore_respawn matches 600.. run setblock ~ ~ ~ minecraft:coal_ore
execute as @e[tag=coal_spawner] at @s run execute if score @s ore_respawn matches 600.. run scoreboard players reset @s ore_respawn
#Copper Ore
execute as @e[tag=copper_spawner] at @s run execute unless block ~ ~ ~ minecraft:copper_ore run scoreboard players add @s ore_respawn 1
execute as @e[tag=copper_spawner] at @s run execute unless block ~ ~ ~ minecraft:copper_ore run setblock ~ ~ ~ minecraft:bedrock
execute as @e[tag=copper_spawner] at @s run execute if score @s ore_respawn matches 600.. run setblock ~ ~ ~ copper_ore
execute as @e[tag=copper_spawner] at @s run execute if score @s ore_respawn matches 600.. run scoreboard players reset @s ore_respawn
#Iron Ore
execute as @e[tag=iron_spawner] at @s run execute unless block ~ ~ ~ minecraft:iron_ore run scoreboard players add @s ore_respawn 1
execute as @e[tag=iron_spawner] at @s run execute unless block ~ ~ ~ minecraft:iron_ore run setblock ~ ~ ~ minecraft:bedrock
execute as @e[tag=iron_spawner] at @s run execute if score @s ore_respawn matches 600.. run setblock ~ ~ ~ iron_ore
execute as @e[tag=iron_spawner] at @s run execute if score @s ore_respawn matches 600.. run scoreboard players reset @s ore_respawn
#Gold Ore
execute as @e[tag=gold_spawner] at @s run execute unless block ~ ~ ~ minecraft:gold_ore run scoreboard players add @s ore_respawn 1
execute as @e[tag=gold_spawner] at @s run execute unless block ~ ~ ~ minecraft:gold_ore run setblock ~ ~ ~ minecraft:bedrock
execute as @e[tag=gold_spawner] at @s run execute if score @s ore_respawn matches 600.. run setblock ~ ~ ~ gold_ore
execute as @e[tag=gold_spawner] at @s run execute if score @s ore_respawn matches 600.. run scoreboard players reset @s ore_respawn
#Lapis Lazuli Ore
execute as @e[tag=lapis_spawner] at @s run execute unless block ~ ~ ~ minecraft:lapis_ore run scoreboard players add @s ore_respawn 1
execute as @e[tag=lapis_spawner] at @s run execute unless block ~ ~ ~ minecraft:lapis_ore run setblock ~ ~ ~ minecraft:bedrock
execute as @e[tag=lapis_spawner] at @s run execute if score @s ore_respawn matches 600.. run setblock ~ ~ ~ minecraft:lapis_ore
execute as @e[tag=lapis_spawner] at @s run execute if score @s ore_respawn matches 600.. run scoreboard players reset @s ore_respawn
#Diamond Ore
execute as @e[tag=dia_spawner] at @s run execute unless block ~ ~ ~ minecraft:diamond_ore run scoreboard players add @s ore_respawn 1
execute as @e[tag=dia_spawner] at @s run execute unless block ~ ~ ~ minecraft:diamond_ore run setblock ~ ~ ~ minecraft:bedrock
execute as @e[tag=dia_spawner] at @s run execute if score @s ore_respawn matches 1200.. run setblock ~ ~ ~ minecraft:diamond_ore
execute as @e[tag=dia_spawner] at @s run execute if score @s ore_respawn matches 1200.. run scoreboard players reset @s ore_respawn
#Block of Resin
execute as @e[tag=resin_spawner] at @s run execute unless block ~ ~ ~ minecraft:resin_block run scoreboard players add @s ore_respawn 1
execute as @e[tag=resin_spawner] at @s run execute unless block ~ ~ ~ minecraft:resin_block run setblock ~ ~ ~ minecraft:bedrock
execute as @e[tag=resin_spawner] at @s run execute if score @s ore_respawn matches 300.. run setblock ~ ~ ~ minecraft:resin_block
execute as @e[tag=resin_spawner] at @s run execute if score @s ore_respawn matches 300.. run scoreboard players reset @s ore_respawn
#suspicious_sand
execute as @e[tag=suspicious_sand_spawner] at @s run execute unless block ~ ~ ~ minecraft:suspicious_sand run scoreboard players add @s ore_respawn 1
execute as @e[tag=suspicious_sand_spawner] at @s run execute unless block ~ ~ ~ minecraft:suspicious_sand run setblock ~ ~ ~ minecraft:bedrock
execute as @e[tag=suspicious_sand_spawner] at @s run execute if score @s ore_respawn matches 600.. run setblock ~ ~ ~ suspicious_sand{LootTable:"redstoneworld:mine_dimension/archaeology/pottery_task_suspicious_sand"}
execute as @e[tag=suspicious_sand_spawner] at @s run execute if score @s ore_respawn matches 600.. run scoreboard players reset @s ore_respawn
#cactus
execute as @e[tag=cactus_spawner] at @s run execute unless block ~ ~ ~ minecraft:cactus run scoreboard players add @s ore_respawn 1
execute as @e[tag=cactus_spawner] at @s run execute unless block ~ ~ ~ minecraft:cactus run setblock ~ ~ ~ minecraft:dead_bush
execute as @e[tag=cactus_spawner] at @s run execute if score @s ore_respawn matches 300.. run setblock ~ ~ ~ minecraft:cactus
execute as @e[tag=cactus_spawner] at @s run execute if score @s ore_respawn matches 300.. run scoreboard players reset @s ore_respawn
