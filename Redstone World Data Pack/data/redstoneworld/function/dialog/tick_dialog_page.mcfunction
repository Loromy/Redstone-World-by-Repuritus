scoreboard players enable @a dialog_page

execute as @a[scores={dialog_page=1}] run function redstoneworld:dialog/run/run_stats

execute as @a[scores={dialog_page=1..}] run scoreboard players set @s dialog_page 0