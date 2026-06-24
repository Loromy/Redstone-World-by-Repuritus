execute positioned ~ ~2 ~ run particle electric_spark ^ ^ ^5 0.1 1 0.1 0.01 60
execute positioned ~ ~2 ~ run particle electric_spark ^ ^ ^5 2 0 2 0.1 500
playsound block.copper_door.open master @s
execute as @s at @s positioned ~ ~2 ~ run execute positioned ^ ^ ^5 run execute as @e[distance=..5,type=!player] at @s run summon lightning_bolt ~ ~ ~
scoreboard players set @s wapon_cooldown_lightning 10

scoreboard players remove @s Mana 100
