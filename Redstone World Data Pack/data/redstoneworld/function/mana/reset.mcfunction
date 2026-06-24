#Mana System - Reset/Uninstall
scoreboard objectives remove Mana
scoreboard objectives remove MaxMana
scoreboard objectives remove ManaPerSecond
scoreboard objectives remove rcmp
scoreboard objectives remove rcmp_mana
tellraw @a [{"text":"[Mana]","color":"blue"},{"text":" Mana System deaktiviert","color":"gray"}]

