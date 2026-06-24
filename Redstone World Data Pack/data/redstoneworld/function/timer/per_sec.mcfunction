execute as @a at @s run scoreboard players add @s playtime_tracker_sec 1
scoreboard players add timer playtime_tracker_sec 1
execute as @a at @s if score @s playtime_tracker_sec matches 60.. run scoreboard players add @s playtime_tracker_min 1
execute as @a at @s if score @s playtime_tracker_sec matches 60.. run scoreboard players set @s playtime_tracker_sec 0
execute if score timer playtime_tracker_sec matches 60.. run scoreboard players add timer playtime_tracker_min 1
execute if score timer playtime_tracker_sec matches 60.. run scoreboard players set timer playtime_tracker_sec 0
execute as @a at @s if score @s playtime_tracker_min matches 60.. run scoreboard players add @s playtime_tracker_hour 1
execute as @a at @s if score @s playtime_tracker_min matches 60.. run scoreboard players set @s playtime_tracker_min 0
execute if score timer playtime_tracker_min matches 60.. run scoreboard players add timer playtime_tracker_hour 1
execute if score timer playtime_tracker_min matches 60.. run scoreboard players set timer playtime_tracker_min 0
execute as @a at @s if score @s playtime_tracker_hour matches 24.. run scoreboard players add @s playtime_tracker_day 1
execute as @a at @s if score @s playtime_tracker_hour matches 24.. run scoreboard players set @s playtime_tracker_hour 0
execute if score timer playtime_tracker_hour matches 24.. run scoreboard players add timer playtime_tracker_day 1
execute if score timer playtime_tracker_hour matches 24.. run scoreboard players set timer playtime_tracker_hour 0
