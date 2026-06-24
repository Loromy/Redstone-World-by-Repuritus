execute as @e[tag=uhr] run data merge entity @s {Pose:{Head:[0.0f,0.0f,0.1f]}}

execute store result score hour Clock run time query daytime
execute store result score days Clock run time query day
scoreboard players operation hour Clock /= divider1000 Clock
scoreboard players add hour Clock 6
execute if score hour Clock matches 24.. run scoreboard players remove hour Clock 24

execute store result score minute Clock run time query daytime
scoreboard players operation minute Clock %= divider1000 Clock
scoreboard players add minute Clock 6

scoreboard players operation pos_hour Clock = hour Clock
scoreboard players operation pos_hour Clock *= multiplier30 Clock
execute as @e[tag=uhr_hour] at @s if entity @a[distance=..50] store result entity @s Pose.Head[2] float 1 run scoreboard players get pos_hour Clock

scoreboard players operation pos_minute Clock = minute Clock
scoreboard players operation pos_minute Clock *= multiplier60 Clock
scoreboard players operation pos_minute Clock /= divider1000 Clock
scoreboard players operation pos_minute Clock *= multiplier6 Clock
execute as @e[tag=uhr_minute] at @s if entity @a[distance=..50] store result entity @s Pose.Head[2] float 1 run scoreboard players get pos_minute Clock

scoreboard players operation digital_minute Clock = minute Clock
scoreboard players operation digital_minute Clock *= multiplier60 Clock
scoreboard players operation digital_minute Clock /= divider1006 Clock

execute as @a run execute if data entity @s SelectedItem{id:"minecraft:clock"} run title @s actionbar [{"color":"dark_red","text":"Time: "},{"color":"gold","score":{"name":"hour","objective":"Clock"}},{"color":"gold","text":":"},{"color":"gold","score":{"name":"digital_minute","objective":"Clock"}},{"color":"gold","text":" a´clock"}]
