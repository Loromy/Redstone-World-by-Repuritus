#Tasks System - Reset/Uninstall
scoreboard objectives remove completed_quests_count
scoreboard objectives remove task_ores
scoreboard objectives remove task_forge
scoreboard objectives remove task_pottery
tellraw @a [{"text":"[Tasks]","color":"green"},{"text":" Tasks System deaktiviert","color":"gray"}]

