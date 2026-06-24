title @s title [" ",{"color":"dark_green","text":"--Quest completed "},{"color":"dark_green","score":{"name":"@s","objective":"completed_quests_count"}},{"color":"dark_green","text":"/10--"}]

execute as @s at @s run execute if score @s completed_quests_count matches 10 run advancement grant @s only redstoneworld:redstoneworld/task/all_compleated