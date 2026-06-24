#Mob Spawner System - Reset/Uninstall
scoreboard objectives remove mob_count
scoreboard objectives remove spawn_cooldown
tellraw @a [{"text":"[Mob Spawner]","color":"green"},{"text":" Mob Spawner System deaktiviert","color":"gray"}]

