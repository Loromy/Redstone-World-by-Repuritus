particle cloud ~ ~1 ~ 0.3 0.5 0.3 0.01 30
playsound minecraft:entity.enderman.teleport master @s
execute as @s at @s positioned ~ ~2 ~ run execute positioned ^ ^ ^10 run execute if block ~ ~ ~ minecraft:air run teleport @s ~ ~ ~
scoreboard players set @s wapon_cooldown_teleport 2

scoreboard players remove @s Mana 100