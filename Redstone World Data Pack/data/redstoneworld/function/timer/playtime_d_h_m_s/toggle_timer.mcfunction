tag @s[tag=show_timer] add remove_temp
tag @s[tag=!show_timer,tag=!remove_temp] add show_timer
tag @s[tag=remove_temp] remove show_timer
tag @s[tag=remove_temp] remove remove_temp
execute if entity @s[tag=show_timer] run tellraw @s {"text":"redstoneworld:timer/ AN","color":"green"}
execute if entity @s[tag=!show_timer] run tellraw @s {"text":"redstoneworld:timer/ AUS","color":"red"}
