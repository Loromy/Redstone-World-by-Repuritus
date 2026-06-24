scoreboard players enable @a dialog_page

execute as @a run execute if score @s dialog_page matches 1 run function redstoneworld:dialog/run/run_stats

execute as @a run execute if score @s dialog_page matches 1.. run scoreboard players set @s dialog_page 0