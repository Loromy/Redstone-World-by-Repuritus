scoreboard players add spawn_cooldown data 1
execute if score spawn_cooldown data matches 1 run function redstoneworld:adventur_system/mob_spawner/spawn/trigger_mob_spawn

execute if score spawn_cooldown data matches 100.. run scoreboard players set spawn_cooldown data 0