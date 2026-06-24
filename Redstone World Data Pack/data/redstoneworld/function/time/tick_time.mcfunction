scoreboard players add clock_sec data 1

execute if score clock_sec data matches 20 run function redstoneworld:time/per_sec

execute if score clock_sec data matches 20.. run scoreboard players set clock_sec data 0