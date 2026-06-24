execute positioned ~ ~2 ~ run particle flame ^ ^ ^5 0.5 0.5 0.5 0.01 30
playsound block.fire.extinguish master @s
execute as @s at @s positioned ~ ~2 ~ run execute positioned ^ ^ ^5 run execute as @e[distance=..5,type=!player] at @s run execute if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:fire
scoreboard players set @s wapon_cooldown_fire 10

scoreboard players remove @s Mana 100
