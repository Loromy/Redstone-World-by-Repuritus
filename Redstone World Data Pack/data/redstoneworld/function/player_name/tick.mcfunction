execute as @a[scores={rw_player.left=1..}] at @s run function redstoneworld:player_name/test_name/start
execute as @a unless score @s rw_player.left matches 0 at @s run function redstoneworld:player_name/new_user/start
