execute as @a run execute if score @s Redbytes matches 1000000000.. run scoreboard players add @s Redbytes_2 1
execute as @a run execute if score @s Redbytes matches 1000000000.. run scoreboard players set @s Redbytes 0

execute as @a run execute if score @s Redbytes matches ..-1 run execute if score @s Redbytes_2 matches 1.. run scoreboard players remove @s Redbytes_2 1
execute as @a run execute if score @s Redbytes matches ..-1 run execute if score @s Redbytes_2 matches 1.. run scoreboard players set @s Redbytes 999999999

