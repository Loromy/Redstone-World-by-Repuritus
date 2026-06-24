#Timer System - Reset/Uninstall
scoreboard objectives remove timer_data
scoreboard objectives remove playtime_tracker_sec
scoreboard objectives remove playtime_tracker_min
scoreboard objectives remove playtime_tracker_hour
scoreboard objectives remove playtime_tracker_day
tellraw @a [{"text":"[Timer]","color":"blue"},{"text":" Timer System deaktiviert","color":"gray"}]

